# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\CLino\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\CLino\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\myProjectCpp\c_proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\myProjectCpp\c_proj\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c_threadProject_1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/c_threadProject_1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/c_threadProject_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c_threadProject_1.dir/flags.make

CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj: CMakeFiles/c_threadProject_1.dir/flags.make
CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj: D:/myProjectCpp/c_proj/packaged_task_Test.cpp
CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj: CMakeFiles/c_threadProject_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\myProjectCpp\c_proj\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj"
	C:\CLino\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj -MF CMakeFiles\c_threadProject_1.dir\packaged_task_Test.cpp.obj.d -o CMakeFiles\c_threadProject_1.dir\packaged_task_Test.cpp.obj -c D:\myProjectCpp\c_proj\packaged_task_Test.cpp

CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.i"
	C:\CLino\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\myProjectCpp\c_proj\packaged_task_Test.cpp > CMakeFiles\c_threadProject_1.dir\packaged_task_Test.cpp.i

CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.s"
	C:\CLino\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\myProjectCpp\c_proj\packaged_task_Test.cpp -o CMakeFiles\c_threadProject_1.dir\packaged_task_Test.cpp.s

# Object files for target c_threadProject_1
c_threadProject_1_OBJECTS = \
"CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj"

# External object files for target c_threadProject_1
c_threadProject_1_EXTERNAL_OBJECTS =

c_threadProject_1.exe: CMakeFiles/c_threadProject_1.dir/packaged_task_Test.cpp.obj
c_threadProject_1.exe: CMakeFiles/c_threadProject_1.dir/build.make
c_threadProject_1.exe: CMakeFiles/c_threadProject_1.dir/linkLibs.rsp
c_threadProject_1.exe: CMakeFiles/c_threadProject_1.dir/objects1.rsp
c_threadProject_1.exe: CMakeFiles/c_threadProject_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\myProjectCpp\c_proj\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable c_threadProject_1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\c_threadProject_1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c_threadProject_1.dir/build: c_threadProject_1.exe
.PHONY : CMakeFiles/c_threadProject_1.dir/build

CMakeFiles/c_threadProject_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\c_threadProject_1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/c_threadProject_1.dir/clean

CMakeFiles/c_threadProject_1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\myProjectCpp\c_proj D:\myProjectCpp\c_proj D:\myProjectCpp\c_proj\cmake-build-debug D:\myProjectCpp\c_proj\cmake-build-debug D:\myProjectCpp\c_proj\cmake-build-debug\CMakeFiles\c_threadProject_1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c_threadProject_1.dir/depend

