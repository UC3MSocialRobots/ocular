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
include src/libraries/CMakeFiles/functions.dir/depend.make

# Include the progress variables for this target.
include src/libraries/CMakeFiles/functions.dir/progress.make

# Include the compile flags for this target's objects.
include src/libraries/CMakeFiles/functions.dir/flags.make

src/libraries/CMakeFiles/functions.dir/functions.cpp.o: src/libraries/CMakeFiles/functions.dir/flags.make
src/libraries/CMakeFiles/functions.dir/functions.cpp.o: ../src/libraries/functions.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peko/tfg_git/code/demos/opencv_c++/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/libraries/CMakeFiles/functions.dir/functions.cpp.o"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/functions.dir/functions.cpp.o -c /home/peko/tfg_git/code/demos/opencv_c++/src/libraries/functions.cpp

src/libraries/CMakeFiles/functions.dir/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/functions.dir/functions.cpp.i"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/peko/tfg_git/code/demos/opencv_c++/src/libraries/functions.cpp > CMakeFiles/functions.dir/functions.cpp.i

src/libraries/CMakeFiles/functions.dir/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/functions.dir/functions.cpp.s"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/peko/tfg_git/code/demos/opencv_c++/src/libraries/functions.cpp -o CMakeFiles/functions.dir/functions.cpp.s

src/libraries/CMakeFiles/functions.dir/functions.cpp.o.requires:
.PHONY : src/libraries/CMakeFiles/functions.dir/functions.cpp.o.requires

src/libraries/CMakeFiles/functions.dir/functions.cpp.o.provides: src/libraries/CMakeFiles/functions.dir/functions.cpp.o.requires
	$(MAKE) -f src/libraries/CMakeFiles/functions.dir/build.make src/libraries/CMakeFiles/functions.dir/functions.cpp.o.provides.build
.PHONY : src/libraries/CMakeFiles/functions.dir/functions.cpp.o.provides

src/libraries/CMakeFiles/functions.dir/functions.cpp.o.provides.build: src/libraries/CMakeFiles/functions.dir/functions.cpp.o

# Object files for target functions
functions_OBJECTS = \
"CMakeFiles/functions.dir/functions.cpp.o"

# External object files for target functions
functions_EXTERNAL_OBJECTS =

../lib/libfunctions.a: src/libraries/CMakeFiles/functions.dir/functions.cpp.o
../lib/libfunctions.a: src/libraries/CMakeFiles/functions.dir/build.make
../lib/libfunctions.a: src/libraries/CMakeFiles/functions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../../lib/libfunctions.a"
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && $(CMAKE_COMMAND) -P CMakeFiles/functions.dir/cmake_clean_target.cmake
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/functions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libraries/CMakeFiles/functions.dir/build: ../lib/libfunctions.a
.PHONY : src/libraries/CMakeFiles/functions.dir/build

src/libraries/CMakeFiles/functions.dir/requires: src/libraries/CMakeFiles/functions.dir/functions.cpp.o.requires
.PHONY : src/libraries/CMakeFiles/functions.dir/requires

src/libraries/CMakeFiles/functions.dir/clean:
	cd /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries && $(CMAKE_COMMAND) -P CMakeFiles/functions.dir/cmake_clean.cmake
.PHONY : src/libraries/CMakeFiles/functions.dir/clean

src/libraries/CMakeFiles/functions.dir/depend:
	cd /home/peko/tfg_git/code/demos/opencv_c++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peko/tfg_git/code/demos/opencv_c++ /home/peko/tfg_git/code/demos/opencv_c++/src/libraries /home/peko/tfg_git/code/demos/opencv_c++/build /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries /home/peko/tfg_git/code/demos/opencv_c++/build/src/libraries/CMakeFiles/functions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libraries/CMakeFiles/functions.dir/depend

