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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cecilia/Desktop/SequenceStatistics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cecilia/Desktop/SequenceStatistics/build

# Include any dependencies generated for this target.
include CMakeFiles/stats.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stats.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stats.dir/flags.make

CMakeFiles/stats.dir/src/stats.cpp.o: CMakeFiles/stats.dir/flags.make
CMakeFiles/stats.dir/src/stats.cpp.o: ../src/stats.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cecilia/Desktop/SequenceStatistics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stats.dir/src/stats.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stats.dir/src/stats.cpp.o -c /home/cecilia/Desktop/SequenceStatistics/src/stats.cpp

CMakeFiles/stats.dir/src/stats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stats.dir/src/stats.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cecilia/Desktop/SequenceStatistics/src/stats.cpp > CMakeFiles/stats.dir/src/stats.cpp.i

CMakeFiles/stats.dir/src/stats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stats.dir/src/stats.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cecilia/Desktop/SequenceStatistics/src/stats.cpp -o CMakeFiles/stats.dir/src/stats.cpp.s

# Object files for target stats
stats_OBJECTS = \
"CMakeFiles/stats.dir/src/stats.cpp.o"

# External object files for target stats
stats_EXTERNAL_OBJECTS =

bin/stats: CMakeFiles/stats.dir/src/stats.cpp.o
bin/stats: CMakeFiles/stats.dir/build.make
bin/stats: /usr/lib/x86_64-linux-gnu/libz.so
bin/stats: CMakeFiles/stats.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cecilia/Desktop/SequenceStatistics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/stats"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stats.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stats.dir/build: bin/stats

.PHONY : CMakeFiles/stats.dir/build

CMakeFiles/stats.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stats.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stats.dir/clean

CMakeFiles/stats.dir/depend:
	cd /home/cecilia/Desktop/SequenceStatistics/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cecilia/Desktop/SequenceStatistics /home/cecilia/Desktop/SequenceStatistics /home/cecilia/Desktop/SequenceStatistics/build /home/cecilia/Desktop/SequenceStatistics/build /home/cecilia/Desktop/SequenceStatistics/build/CMakeFiles/stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stats.dir/depend

