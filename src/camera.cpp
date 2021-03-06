#include <boost/thread.hpp>

#include <ros/ros.h>
#include <ros/time.h>

#include "uvc_cam/uvc_cam.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/image_encodings.h"
#include "sensor_msgs/CameraInfo.h"
#include "camera_info_manager/camera_info_manager.h"
#include "image_transport/image_transport.h"

#include "uvc_camera/camera.h"

using namespace sensor_msgs;

namespace uvc_camera {

Camera::Camera(ros::NodeHandle _comm_nh, ros::NodeHandle _param_nh) :
      node(_comm_nh), pnode(_param_nh), it(_comm_nh),
      info_mgr(_comm_nh, "camera"), cam(0) {

      /* default config values */
      width = 640;
      height = 480;
      fps = 30;
      skip_frames = 0;
      frames_to_skip = 0;
      device = "/dev/video0";
      frame = "camera";
      rotate = false;

	// default config values for additional params added by wpf
	// some initial values here should not be provided
	autoPriority = 1;
	autoExposure = 1;
	brightness = 128;	
	contrast = 32;
	whiteBalanceTempAuto = 1;
	whiteBalanceTemp = 5984;
	powerFreq = 2; // 60 HZ
	gain = 200;
	sharpness = 224;
	blacklightCompen = 1; 
	absolute = 250;
	led1Mode = 3;
	led1Freq = 0;
	saturation = 32;
	focus = 16;

      /* set up information manager */
      std::string url;

      pnode.getParam("camera_info_url", url);

      info_mgr.loadCameraInfo(url);

      /* pull other configuration */
      pnode.getParam("device", device);

      pnode.getParam("fps", fps);
      pnode.getParam("skip_frames", skip_frames);

      pnode.getParam("width", width);
      pnode.getParam("height", height);

      pnode.getParam("frame_id", frame);

	  // additional parameters added by wpf
	  // 2013/3/7 @ Singapore
	  // TODO:revise the camera.h, uvc_cam.h, uvc_cam.cpp as well as the launch file at the same time
	pnode.getParam("autoPriority", autoPriority);
	pnode.getParam("autoExposure", autoExposure);
	pnode.getParam("brightness", brightness);
	pnode.getParam("contrast", contrast);
	pnode.getParam("whiteBalanceTempAuto", whiteBalanceTempAuto);
	pnode.getParam("whiteBalanceTemp", whiteBalanceTemp);
	pnode.getParam("powerFreq", powerFreq);
	pnode.getParam("gain", gain);
	pnode.getParam("sharpness", sharpness);
	pnode.getParam("blacklightCompen", blacklightCompen);
	pnode.getParam("absolute", absolute);
	pnode.getParam("led1Mode", led1Mode);
	pnode.getParam("led1Freq", led1Freq);
	pnode.getParam("saturation", saturation);
	pnode.getParam("focus", focus);
	pnode.getParam("mode", mode);

	std::string MJPG = "MJPG";
 	std::string RGB  = "RGB";
	std::string YUYV = "YUYV";
	
	uvc_cam::Cam::mode_t camMode;
	if (mode == MJPG)
	{camMode = uvc_cam::Cam::MODE_MJPG;}
	else if (mode == RGB)
	{camMode = uvc_cam::Cam::MODE_RGB;}
	else if (mode == YUYV)
	{camMode = uvc_cam::Cam::MODE_YUYV;}
	else
	{
		ROS_INFO("undefined mode!");
		exit(-1);
	}
	  
      /* advertise image streams and info streams */
      pub = it.advertise("image_raw", 1);

      info_pub = node.advertise<CameraInfo>("camera_info", 1);

      /* initialize the cameras */
	// the api of uvc_cam will be changed here
      //cam = new uvc_cam::Cam(device.c_str(), uvc_cam::Cam::MODE_MJPG, width, height, fps);
      cam = new uvc_cam::Cam(device.c_str(), camMode, width, height, fps, autoPriority, autoExposure, brightness, contrast, whiteBalanceTempAuto, whiteBalanceTemp, powerFreq, gain, sharpness, blacklightCompen, absolute, led1Mode, led1Freq, saturation, focus);
      cam->set_motion_thresholds(100, -1);

      /* and turn on the streamer */
      ok = true;
      image_thread = boost::thread(boost::bind(&Camera::feedImages, this));
    }

    void Camera::sendInfo(ImagePtr &image, ros::Time time) {
      CameraInfoPtr info(new CameraInfo(info_mgr.getCameraInfo()));

      /* Throw out any CamInfo that's not calibrated to this camera mode */
      if (info->K[0] != 0.0 &&
           (image->width != info->width
              || image->height != info->height)) {
        info.reset(new CameraInfo());
      }

      /* If we don't have a calibration, set the image dimensions */
      if (info->K[0] == 0.0) {
        info->width = image->width;
        info->height = image->height;
      }

      info->header.stamp = time;
      info->header.frame_id = frame;

      info_pub.publish(info);
    }

    void Camera::feedImages() {
      unsigned int pair_id = 0;
      while (ok) {
        unsigned char *img_frame = NULL;
        uint32_t bytes_used;

        ros::Time capture_time = ros::Time::now();

        int idx = cam->grab(&img_frame, bytes_used);

        /* Read in every frame the camera generates, but only send each
         * (skip_frames + 1)th frame. It's set up this way just because
         * this is based on Stereo...
         */
        if (skip_frames == 0 || frames_to_skip == 0) {
          if (img_frame) {
             ImagePtr image(new Image);

             image->height = height;
             image->width = width;
             image->step = 3 * width;
             image->encoding = image_encodings::RGB8;

             image->header.stamp = capture_time;
             image->header.seq = pair_id;

             image->header.frame_id = frame;

             image->data.resize(image->step * image->height);

             memcpy(&image->data[0], img_frame, width*height * 3);

             pub.publish(image);

             sendInfo(image, capture_time);

             ++pair_id;
          }

          frames_to_skip = skip_frames;
        } else {
          frames_to_skip--;
        }

        if (img_frame) cam->release(idx);
      }
    }

    Camera::~Camera() {
      ok = false;
      image_thread.join();
      if (cam) delete cam;
    }


};

