# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client

# Include any dependencies generated for this target.
include CMakeFiles/tcp-echo-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcp-echo-client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcp-echo-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcp-echo-client.dir/flags.make

CMakeFiles/tcp-echo-client.dir/main.cpp.o: CMakeFiles/tcp-echo-client.dir/flags.make
CMakeFiles/tcp-echo-client.dir/main.cpp.o: main.cpp
CMakeFiles/tcp-echo-client.dir/main.cpp.o: CMakeFiles/tcp-echo-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcp-echo-client.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-client.dir/main.cpp.o -MF CMakeFiles/tcp-echo-client.dir/main.cpp.o.d -o CMakeFiles/tcp-echo-client.dir/main.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/main.cpp

CMakeFiles/tcp-echo-client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-client.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/main.cpp > CMakeFiles/tcp-echo-client.dir/main.cpp.i

CMakeFiles/tcp-echo-client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-client.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/main.cpp -o CMakeFiles/tcp-echo-client.dir/main.cpp.s

# Object files for target tcp-echo-client
tcp__echo__client_OBJECTS = \
"CMakeFiles/tcp-echo-client.dir/main.cpp.o"

# External object files for target tcp-echo-client
tcp__echo__client_EXTERNAL_OBJECTS =

tcp-echo-client: CMakeFiles/tcp-echo-client.dir/main.cpp.o
tcp-echo-client: CMakeFiles/tcp-echo-client.dir/build.make
tcp-echo-client: CMakeFiles/tcp-echo-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tcp-echo-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp-echo-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcp-echo-client.dir/build: tcp-echo-client
.PHONY : CMakeFiles/tcp-echo-client.dir/build

CMakeFiles/tcp-echo-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcp-echo-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcp-echo-client.dir/clean

CMakeFiles/tcp-echo-client.dir/depend:
	cd /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/client/CMakeFiles/tcp-echo-client.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tcp-echo-client.dir/depend
