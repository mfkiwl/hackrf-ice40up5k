# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/source/intellij/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/source/intellij/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wieker/Projects/linux/hackrf/hackrf/host

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug

# Include any dependencies generated for this target.
include hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/depend.make

# Include the progress variables for this target.
include hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/progress.make

# Include the compile flags for this target's objects.
include hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/flags.make

hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o: hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/flags.make
hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o: ../hackrf-tools/src/hackrf_cpldjtag.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o"
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o   -c /home/wieker/Projects/linux/hackrf/hackrf/host/hackrf-tools/src/hackrf_cpldjtag.c

hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.i"
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wieker/Projects/linux/hackrf/hackrf/host/hackrf-tools/src/hackrf_cpldjtag.c > CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.i

hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.s"
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wieker/Projects/linux/hackrf/hackrf/host/hackrf-tools/src/hackrf_cpldjtag.c -o CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.s

# Object files for target hackrf_cpldjtag
hackrf_cpldjtag_OBJECTS = \
"CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o"

# External object files for target hackrf_cpldjtag
hackrf_cpldjtag_EXTERNAL_OBJECTS =

hackrf-tools/src/hackrf_cpldjtag: hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/hackrf_cpldjtag.c.o
hackrf-tools/src/hackrf_cpldjtag: hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/build.make
hackrf-tools/src/hackrf_cpldjtag: libhackrf/src/libhackrf.so.0.5.0
hackrf-tools/src/hackrf_cpldjtag: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
hackrf-tools/src/hackrf_cpldjtag: hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hackrf_cpldjtag"
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hackrf_cpldjtag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/build: hackrf-tools/src/hackrf_cpldjtag

.PHONY : hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/build

hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/clean:
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src && $(CMAKE_COMMAND) -P CMakeFiles/hackrf_cpldjtag.dir/cmake_clean.cmake
.PHONY : hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/clean

hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/depend:
	cd /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wieker/Projects/linux/hackrf/hackrf/host /home/wieker/Projects/linux/hackrf/hackrf/host/hackrf-tools/src /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src /home/wieker/Projects/linux/hackrf/hackrf/host/cmake-build-debug/hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hackrf-tools/src/CMakeFiles/hackrf_cpldjtag.dir/depend

