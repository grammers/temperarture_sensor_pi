# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/pi/temperarture_sensor_pi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/temperarture_sensor_pi

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pi/temperarture_sensor_pi/CMakeFiles /home/pi/temperarture_sensor_pi/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pi/temperarture_sensor_pi/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named temperature_sensor_pi

# Build rule for target.
temperature_sensor_pi: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 temperature_sensor_pi
.PHONY : temperature_sensor_pi

# fast build rule for target.
temperature_sensor_pi/fast:
	$(MAKE) -f CMakeFiles/temperature_sensor_pi.dir/build.make CMakeFiles/temperature_sensor_pi.dir/build
.PHONY : temperature_sensor_pi/fast

src/temperature_sensor_pi.o: src/temperature_sensor_pi.cpp.o

.PHONY : src/temperature_sensor_pi.o

# target to build an object file
src/temperature_sensor_pi.cpp.o:
	$(MAKE) -f CMakeFiles/temperature_sensor_pi.dir/build.make CMakeFiles/temperature_sensor_pi.dir/src/temperature_sensor_pi.cpp.o
.PHONY : src/temperature_sensor_pi.cpp.o

src/temperature_sensor_pi.i: src/temperature_sensor_pi.cpp.i

.PHONY : src/temperature_sensor_pi.i

# target to preprocess a source file
src/temperature_sensor_pi.cpp.i:
	$(MAKE) -f CMakeFiles/temperature_sensor_pi.dir/build.make CMakeFiles/temperature_sensor_pi.dir/src/temperature_sensor_pi.cpp.i
.PHONY : src/temperature_sensor_pi.cpp.i

src/temperature_sensor_pi.s: src/temperature_sensor_pi.cpp.s

.PHONY : src/temperature_sensor_pi.s

# target to generate assembly for a file
src/temperature_sensor_pi.cpp.s:
	$(MAKE) -f CMakeFiles/temperature_sensor_pi.dir/build.make CMakeFiles/temperature_sensor_pi.dir/src/temperature_sensor_pi.cpp.s
.PHONY : src/temperature_sensor_pi.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... temperature_sensor_pi"
	@echo "... edit_cache"
	@echo "... src/temperature_sensor_pi.o"
	@echo "... src/temperature_sensor_pi.i"
	@echo "... src/temperature_sensor_pi.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
