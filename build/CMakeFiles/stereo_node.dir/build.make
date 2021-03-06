# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/ros/fuerte/stacks/camera_umd/uvc_camera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build

# Include any dependencies generated for this target.
include CMakeFiles/stereo_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stereo_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stereo_node.dir/flags.make

CMakeFiles/stereo_node.dir/src/stereo_node.o: CMakeFiles/stereo_node.dir/flags.make
CMakeFiles/stereo_node.dir/src/stereo_node.o: ../src/stereo_node.cpp
CMakeFiles/stereo_node.dir/src/stereo_node.o: ../manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/common_rosdeps/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/image_common/camera_calibration_parsers/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/image_common/camera_info_manager/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/bond_core/bond/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/bond_core/smclib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/bond_core/bondcpp/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/bond_core/bond/msg_gen/generated
CMakeFiles/stereo_node.dir/src/stereo_node.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/stereo_node.dir/src/stereo_node.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/stereo_node.dir/src/stereo_node.o -c /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo_node.cpp

CMakeFiles/stereo_node.dir/src/stereo_node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo_node.dir/src/stereo_node.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo_node.cpp > CMakeFiles/stereo_node.dir/src/stereo_node.i

CMakeFiles/stereo_node.dir/src/stereo_node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo_node.dir/src/stereo_node.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo_node.cpp -o CMakeFiles/stereo_node.dir/src/stereo_node.s

CMakeFiles/stereo_node.dir/src/stereo_node.o.requires:
.PHONY : CMakeFiles/stereo_node.dir/src/stereo_node.o.requires

CMakeFiles/stereo_node.dir/src/stereo_node.o.provides: CMakeFiles/stereo_node.dir/src/stereo_node.o.requires
	$(MAKE) -f CMakeFiles/stereo_node.dir/build.make CMakeFiles/stereo_node.dir/src/stereo_node.o.provides.build
.PHONY : CMakeFiles/stereo_node.dir/src/stereo_node.o.provides

CMakeFiles/stereo_node.dir/src/stereo_node.o.provides.build: CMakeFiles/stereo_node.dir/src/stereo_node.o

CMakeFiles/stereo_node.dir/src/stereo.o: CMakeFiles/stereo_node.dir/flags.make
CMakeFiles/stereo_node.dir/src/stereo.o: ../src/stereo.cpp
CMakeFiles/stereo_node.dir/src/stereo.o: ../manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/common_rosdeps/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/image_common/camera_calibration_parsers/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/image_common/camera_info_manager/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/bond_core/bond/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/bond_core/smclib/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/bond_core/bondcpp/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/manifest.xml
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/bond_core/bond/msg_gen/generated
CMakeFiles/stereo_node.dir/src/stereo.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/stereo_node.dir/src/stereo.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/stereo_node.dir/src/stereo.o -c /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo.cpp

CMakeFiles/stereo_node.dir/src/stereo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo_node.dir/src/stereo.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo.cpp > CMakeFiles/stereo_node.dir/src/stereo.i

CMakeFiles/stereo_node.dir/src/stereo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo_node.dir/src/stereo.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/stereo.cpp -o CMakeFiles/stereo_node.dir/src/stereo.s

CMakeFiles/stereo_node.dir/src/stereo.o.requires:
.PHONY : CMakeFiles/stereo_node.dir/src/stereo.o.requires

CMakeFiles/stereo_node.dir/src/stereo.o.provides: CMakeFiles/stereo_node.dir/src/stereo.o.requires
	$(MAKE) -f CMakeFiles/stereo_node.dir/build.make CMakeFiles/stereo_node.dir/src/stereo.o.provides.build
.PHONY : CMakeFiles/stereo_node.dir/src/stereo.o.provides

CMakeFiles/stereo_node.dir/src/stereo.o.provides.build: CMakeFiles/stereo_node.dir/src/stereo.o

CMakeFiles/stereo_node.dir/src/uvc_cam.o: CMakeFiles/stereo_node.dir/flags.make
CMakeFiles/stereo_node.dir/src/uvc_cam.o: ../src/uvc_cam.cpp
CMakeFiles/stereo_node.dir/src/uvc_cam.o: ../manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/common_rosdeps/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/image_common/camera_calibration_parsers/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/image_common/camera_info_manager/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/bond_core/bond/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/bond_core/smclib/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/bond_core/bondcpp/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/manifest.xml
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/bond_core/bond/msg_gen/generated
CMakeFiles/stereo_node.dir/src/uvc_cam.o: /opt/ros/fuerte/stacks/nodelet_core/nodelet/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/stereo_node.dir/src/uvc_cam.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/stereo_node.dir/src/uvc_cam.o -c /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/uvc_cam.cpp

CMakeFiles/stereo_node.dir/src/uvc_cam.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo_node.dir/src/uvc_cam.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/uvc_cam.cpp > CMakeFiles/stereo_node.dir/src/uvc_cam.i

CMakeFiles/stereo_node.dir/src/uvc_cam.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo_node.dir/src/uvc_cam.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /opt/ros/fuerte/stacks/camera_umd/uvc_camera/src/uvc_cam.cpp -o CMakeFiles/stereo_node.dir/src/uvc_cam.s

CMakeFiles/stereo_node.dir/src/uvc_cam.o.requires:
.PHONY : CMakeFiles/stereo_node.dir/src/uvc_cam.o.requires

CMakeFiles/stereo_node.dir/src/uvc_cam.o.provides: CMakeFiles/stereo_node.dir/src/uvc_cam.o.requires
	$(MAKE) -f CMakeFiles/stereo_node.dir/build.make CMakeFiles/stereo_node.dir/src/uvc_cam.o.provides.build
.PHONY : CMakeFiles/stereo_node.dir/src/uvc_cam.o.provides

CMakeFiles/stereo_node.dir/src/uvc_cam.o.provides.build: CMakeFiles/stereo_node.dir/src/uvc_cam.o

# Object files for target stereo_node
stereo_node_OBJECTS = \
"CMakeFiles/stereo_node.dir/src/stereo_node.o" \
"CMakeFiles/stereo_node.dir/src/stereo.o" \
"CMakeFiles/stereo_node.dir/src/uvc_cam.o"

# External object files for target stereo_node
stereo_node_EXTERNAL_OBJECTS =

../bin/stereo_node: CMakeFiles/stereo_node.dir/src/stereo_node.o
../bin/stereo_node: CMakeFiles/stereo_node.dir/src/stereo.o
../bin/stereo_node: CMakeFiles/stereo_node.dir/src/uvc_cam.o
../bin/stereo_node: CMakeFiles/stereo_node.dir/build.make
../bin/stereo_node: CMakeFiles/stereo_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/stereo_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stereo_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stereo_node.dir/build: ../bin/stereo_node
.PHONY : CMakeFiles/stereo_node.dir/build

CMakeFiles/stereo_node.dir/requires: CMakeFiles/stereo_node.dir/src/stereo_node.o.requires
CMakeFiles/stereo_node.dir/requires: CMakeFiles/stereo_node.dir/src/stereo.o.requires
CMakeFiles/stereo_node.dir/requires: CMakeFiles/stereo_node.dir/src/uvc_cam.o.requires
.PHONY : CMakeFiles/stereo_node.dir/requires

CMakeFiles/stereo_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stereo_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stereo_node.dir/clean

CMakeFiles/stereo_node.dir/depend:
	cd /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/ros/fuerte/stacks/camera_umd/uvc_camera /opt/ros/fuerte/stacks/camera_umd/uvc_camera /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build /opt/ros/fuerte/stacks/camera_umd/uvc_camera/build/CMakeFiles/stereo_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stereo_node.dir/depend

