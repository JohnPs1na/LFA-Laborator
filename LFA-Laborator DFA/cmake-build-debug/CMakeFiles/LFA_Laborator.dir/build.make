# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\denih\CLionProjects\LFA-Laborator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LFA_Laborator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LFA_Laborator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LFA_Laborator.dir/flags.make

CMakeFiles/LFA_Laborator.dir/main.cpp.obj: CMakeFiles/LFA_Laborator.dir/flags.make
CMakeFiles/LFA_Laborator.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LFA_Laborator.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LFA_Laborator.dir\main.cpp.obj -c C:\Users\denih\CLionProjects\LFA-Laborator\main.cpp

CMakeFiles/LFA_Laborator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LFA_Laborator.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\denih\CLionProjects\LFA-Laborator\main.cpp > CMakeFiles\LFA_Laborator.dir\main.cpp.i

CMakeFiles/LFA_Laborator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LFA_Laborator.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\denih\CLionProjects\LFA-Laborator\main.cpp -o CMakeFiles\LFA_Laborator.dir\main.cpp.s

# Object files for target LFA_Laborator
LFA_Laborator_OBJECTS = \
"CMakeFiles/LFA_Laborator.dir/main.cpp.obj"

# External object files for target LFA_Laborator
LFA_Laborator_EXTERNAL_OBJECTS =

LFA_Laborator.exe: CMakeFiles/LFA_Laborator.dir/main.cpp.obj
LFA_Laborator.exe: CMakeFiles/LFA_Laborator.dir/build.make
LFA_Laborator.exe: CMakeFiles/LFA_Laborator.dir/linklibs.rsp
LFA_Laborator.exe: CMakeFiles/LFA_Laborator.dir/objects1.rsp
LFA_Laborator.exe: CMakeFiles/LFA_Laborator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LFA_Laborator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LFA_Laborator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LFA_Laborator.dir/build: LFA_Laborator.exe

.PHONY : CMakeFiles/LFA_Laborator.dir/build

CMakeFiles/LFA_Laborator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LFA_Laborator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LFA_Laborator.dir/clean

CMakeFiles/LFA_Laborator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\denih\CLionProjects\LFA-Laborator C:\Users\denih\CLionProjects\LFA-Laborator C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug C:\Users\denih\CLionProjects\LFA-Laborator\cmake-build-debug\CMakeFiles\LFA_Laborator.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LFA_Laborator.dir/depend

