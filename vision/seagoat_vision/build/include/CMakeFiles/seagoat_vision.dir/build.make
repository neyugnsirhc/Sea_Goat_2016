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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build

# Include any dependencies generated for this target.
include include/CMakeFiles/seagoat_vision.dir/depend.make

# Include the progress variables for this target.
include include/CMakeFiles/seagoat_vision.dir/progress.make

# Include the compile flags for this target's objects.
include include/CMakeFiles/seagoat_vision.dir/flags.make

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o: include/CMakeFiles/seagoat_vision.dir/flags.make
include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o: ../include/seagoat_vision.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o"
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o -c /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/include/seagoat_vision.cpp

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.i"
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/include/seagoat_vision.cpp > CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.i

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.s"
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/include/seagoat_vision.cpp -o CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.s

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.requires:
.PHONY : include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.requires

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.provides: include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.requires
	$(MAKE) -f include/CMakeFiles/seagoat_vision.dir/build.make include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.provides.build
.PHONY : include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.provides

include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.provides.build: include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o

# Object files for target seagoat_vision
seagoat_vision_OBJECTS = \
"CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o"

# External object files for target seagoat_vision
seagoat_vision_EXTERNAL_OBJECTS =

include/libseagoat_vision.a: include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o
include/libseagoat_vision.a: include/CMakeFiles/seagoat_vision.dir/build.make
include/libseagoat_vision.a: include/CMakeFiles/seagoat_vision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libseagoat_vision.a"
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && $(CMAKE_COMMAND) -P CMakeFiles/seagoat_vision.dir/cmake_clean_target.cmake
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seagoat_vision.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/CMakeFiles/seagoat_vision.dir/build: include/libseagoat_vision.a
.PHONY : include/CMakeFiles/seagoat_vision.dir/build

include/CMakeFiles/seagoat_vision.dir/requires: include/CMakeFiles/seagoat_vision.dir/seagoat_vision.cpp.o.requires
.PHONY : include/CMakeFiles/seagoat_vision.dir/requires

include/CMakeFiles/seagoat_vision.dir/clean:
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include && $(CMAKE_COMMAND) -P CMakeFiles/seagoat_vision.dir/cmake_clean.cmake
.PHONY : include/CMakeFiles/seagoat_vision.dir/clean

include/CMakeFiles/seagoat_vision.dir/depend:
	cd /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/include /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include /home/andrew/Projects/RoboSub/Sea_Goat_2016/vision/seagoat_vision/build/include/CMakeFiles/seagoat_vision.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/CMakeFiles/seagoat_vision.dir/depend

