# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = "/cygdrive/c/Users/Saarthak S/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe"

# The command to remove a file.
RM = "/cygdrive/c/Users/Saarthak S/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/f/Dev/C++/Criminal Record"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Criminal_Record.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Criminal_Record.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Criminal_Record.dir/flags.make

CMakeFiles/Criminal_Record.dir/main.cpp.o: CMakeFiles/Criminal_Record.dir/flags.make
CMakeFiles/Criminal_Record.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Criminal_Record.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Criminal_Record.dir/main.cpp.o -c "/cygdrive/f/Dev/C++/Criminal Record/main.cpp"

CMakeFiles/Criminal_Record.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Criminal_Record.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/f/Dev/C++/Criminal Record/main.cpp" > CMakeFiles/Criminal_Record.dir/main.cpp.i

CMakeFiles/Criminal_Record.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Criminal_Record.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/f/Dev/C++/Criminal Record/main.cpp" -o CMakeFiles/Criminal_Record.dir/main.cpp.s

CMakeFiles/Criminal_Record.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Criminal_Record.dir/main.cpp.o.requires

CMakeFiles/Criminal_Record.dir/main.cpp.o.provides: CMakeFiles/Criminal_Record.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Criminal_Record.dir/build.make CMakeFiles/Criminal_Record.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Criminal_Record.dir/main.cpp.o.provides

CMakeFiles/Criminal_Record.dir/main.cpp.o.provides.build: CMakeFiles/Criminal_Record.dir/main.cpp.o


# Object files for target Criminal_Record
Criminal_Record_OBJECTS = \
"CMakeFiles/Criminal_Record.dir/main.cpp.o"

# External object files for target Criminal_Record
Criminal_Record_EXTERNAL_OBJECTS =

Criminal_Record.exe: CMakeFiles/Criminal_Record.dir/main.cpp.o
Criminal_Record.exe: CMakeFiles/Criminal_Record.dir/build.make
Criminal_Record.exe: CMakeFiles/Criminal_Record.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Criminal_Record.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Criminal_Record.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Criminal_Record.dir/build: Criminal_Record.exe

.PHONY : CMakeFiles/Criminal_Record.dir/build

CMakeFiles/Criminal_Record.dir/requires: CMakeFiles/Criminal_Record.dir/main.cpp.o.requires

.PHONY : CMakeFiles/Criminal_Record.dir/requires

CMakeFiles/Criminal_Record.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Criminal_Record.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Criminal_Record.dir/clean

CMakeFiles/Criminal_Record.dir/depend:
	cd "/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/f/Dev/C++/Criminal Record" "/cygdrive/f/Dev/C++/Criminal Record" "/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug" "/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug" "/cygdrive/f/Dev/C++/Criminal Record/cmake-build-debug/CMakeFiles/Criminal_Record.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Criminal_Record.dir/depend

