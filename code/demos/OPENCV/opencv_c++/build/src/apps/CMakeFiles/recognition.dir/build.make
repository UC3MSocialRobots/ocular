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
CMAKE_SOURCE_DIR = /home/peko/tfg_git/code/demos/opencv_c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peko/tfg_git/code/demos/opencv_c++/build

# Include any dependencies generated for this target.
include src/apps/CMakeFiles/recognition.dir/depend.make

# Include the progress variables for this target.
include src/apps/CMakeFiles/recognition.dir/progress.make

# Include the compile flags for this target's objects.
include src/apps/CMakeFiles/recognition.dir/flags.make

src/apps/CMakeFiles/recognition.dir/recognize.cpp.o: src/apps/CMakeFiles/recognition.dir/flags.make
src/apps/CMakeFiles/recognition.dir/recognize.cpp.o: ../src/apps/recognize.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peko/tfg_git/code/demos/opencv_c++/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/apps/CMakeFiles/recognition.dir/recognize.cpp.o"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/recognition.dir/recognize.cpp.o -c /home/peko/tfg_git/code/demos/opencv_c++/src/apps/recognize.cpp

src/apps/CMakeFiles/recognition.dir/recognize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recognition.dir/recognize.cpp.i"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/peko/tfg_git/code/demos/opencv_c++/src/apps/recognize.cpp > CMakeFiles/recognition.dir/recognize.cpp.i

src/apps/CMakeFiles/recognition.dir/recognize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recognition.dir/recognize.cpp.s"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/peko/tfg_git/code/demos/opencv_c++/src/apps/recognize.cpp -o CMakeFiles/recognition.dir/recognize.cpp.s

src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.requires:
.PHONY : src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.requires

src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.provides: src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.requires
	$(MAKE) -f src/apps/CMakeFiles/recognition.dir/build.make src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.provides.build
.PHONY : src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.provides

src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.provides.build: src/apps/CMakeFiles/recognition.dir/recognize.cpp.o

# Object files for target recognition
recognition_OBJECTS = \
"CMakeFiles/recognition.dir/recognize.cpp.o"

# External object files for target recognition
recognition_EXTERNAL_OBJECTS =

../bin/recognition: src/apps/CMakeFiles/recognition.dir/recognize.cpp.o
../bin/recognition: ../lib/libfunctions.a
../bin/recognition: /opt/ros/groovy/lib/libopencv_calib3d.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_contrib.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_core.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_features2d.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_flann.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_gpu.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_highgui.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_imgproc.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_legacy.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_ml.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_nonfree.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_objdetect.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_photo.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_stitching.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_ts.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_video.so
../bin/recognition: /opt/ros/groovy/lib/libopencv_videostab.so
../bin/recognition: src/apps/CMakeFiles/recognition.dir/build.make
../bin/recognition: src/apps/CMakeFiles/recognition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/recognition"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recognition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/apps/CMakeFiles/recognition.dir/build: ../bin/recognition
.PHONY : src/apps/CMakeFiles/recognition.dir/build

src/apps/CMakeFiles/recognition.dir/requires: src/apps/CMakeFiles/recognition.dir/recognize.cpp.o.requires
.PHONY : src/apps/CMakeFiles/recognition.dir/requires

src/apps/CMakeFiles/recognition.dir/clean:
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps && $(CMAKE_COMMAND) -P CMakeFiles/recognition.dir/cmake_clean.cmake
.PHONY : src/apps/CMakeFiles/recognition.dir/clean

src/apps/CMakeFiles/recognition.dir/depend:
	cd /home/peko/tfg_git/code/demos/opencv_c++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peko/tfg_git/code/demos/opencv_c++ /home/peko/tfg_git/code/demos/opencv_c++/src/apps /home/peko/tfg_git/code/demos/opencv_c++/build /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps /home/peko/tfg_git/code/demos/opencv_c++/build/src/apps/CMakeFiles/recognition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/apps/CMakeFiles/recognition.dir/depend
