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
CMAKE_SOURCE_DIR = /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server

# Include any dependencies generated for this target.
include CMakeFiles/tcp-echo-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcp-echo-server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcp-echo-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcp-echo-server.dir/flags.make

CMakeFiles/tcp-echo-server.dir/checksum.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/checksum.cpp.o: checksum.cpp
CMakeFiles/tcp-echo-server.dir/checksum.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcp-echo-server.dir/checksum.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/checksum.cpp.o -MF CMakeFiles/tcp-echo-server.dir/checksum.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/checksum.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/checksum.cpp

CMakeFiles/tcp-echo-server.dir/checksum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/checksum.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/checksum.cpp > CMakeFiles/tcp-echo-server.dir/checksum.cpp.i

CMakeFiles/tcp-echo-server.dir/checksum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/checksum.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/checksum.cpp -o CMakeFiles/tcp-echo-server.dir/checksum.cpp.s

CMakeFiles/tcp-echo-server.dir/listener.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/listener.cpp.o: listener.cpp
CMakeFiles/tcp-echo-server.dir/listener.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcp-echo-server.dir/listener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/listener.cpp.o -MF CMakeFiles/tcp-echo-server.dir/listener.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/listener.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/listener.cpp

CMakeFiles/tcp-echo-server.dir/listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/listener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/listener.cpp > CMakeFiles/tcp-echo-server.dir/listener.cpp.i

CMakeFiles/tcp-echo-server.dir/listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/listener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/listener.cpp -o CMakeFiles/tcp-echo-server.dir/listener.cpp.s

CMakeFiles/tcp-echo-server.dir/logger.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/logger.cpp.o: logger.cpp
CMakeFiles/tcp-echo-server.dir/logger.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tcp-echo-server.dir/logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/logger.cpp.o -MF CMakeFiles/tcp-echo-server.dir/logger.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/logger.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/logger.cpp

CMakeFiles/tcp-echo-server.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/logger.cpp > CMakeFiles/tcp-echo-server.dir/logger.cpp.i

CMakeFiles/tcp-echo-server.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/logger.cpp -o CMakeFiles/tcp-echo-server.dir/logger.cpp.s

CMakeFiles/tcp-echo-server.dir/login-server.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/login-server.cpp.o: login-server.cpp
CMakeFiles/tcp-echo-server.dir/login-server.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tcp-echo-server.dir/login-server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/login-server.cpp.o -MF CMakeFiles/tcp-echo-server.dir/login-server.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/login-server.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/login-server.cpp

CMakeFiles/tcp-echo-server.dir/login-server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/login-server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/login-server.cpp > CMakeFiles/tcp-echo-server.dir/login-server.cpp.i

CMakeFiles/tcp-echo-server.dir/login-server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/login-server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/login-server.cpp -o CMakeFiles/tcp-echo-server.dir/login-server.cpp.s

CMakeFiles/tcp-echo-server.dir/main.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/main.cpp.o: main.cpp
CMakeFiles/tcp-echo-server.dir/main.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tcp-echo-server.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/main.cpp.o -MF CMakeFiles/tcp-echo-server.dir/main.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/main.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/main.cpp

CMakeFiles/tcp-echo-server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/main.cpp > CMakeFiles/tcp-echo-server.dir/main.cpp.i

CMakeFiles/tcp-echo-server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/main.cpp -o CMakeFiles/tcp-echo-server.dir/main.cpp.s

CMakeFiles/tcp-echo-server.dir/server.cpp.o: CMakeFiles/tcp-echo-server.dir/flags.make
CMakeFiles/tcp-echo-server.dir/server.cpp.o: server.cpp
CMakeFiles/tcp-echo-server.dir/server.cpp.o: CMakeFiles/tcp-echo-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tcp-echo-server.dir/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp-echo-server.dir/server.cpp.o -MF CMakeFiles/tcp-echo-server.dir/server.cpp.o.d -o CMakeFiles/tcp-echo-server.dir/server.cpp.o -c /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/server.cpp

CMakeFiles/tcp-echo-server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp-echo-server.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/server.cpp > CMakeFiles/tcp-echo-server.dir/server.cpp.i

CMakeFiles/tcp-echo-server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp-echo-server.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/server.cpp -o CMakeFiles/tcp-echo-server.dir/server.cpp.s

# Object files for target tcp-echo-server
tcp__echo__server_OBJECTS = \
"CMakeFiles/tcp-echo-server.dir/checksum.cpp.o" \
"CMakeFiles/tcp-echo-server.dir/listener.cpp.o" \
"CMakeFiles/tcp-echo-server.dir/logger.cpp.o" \
"CMakeFiles/tcp-echo-server.dir/login-server.cpp.o" \
"CMakeFiles/tcp-echo-server.dir/main.cpp.o" \
"CMakeFiles/tcp-echo-server.dir/server.cpp.o"

# External object files for target tcp-echo-server
tcp__echo__server_EXTERNAL_OBJECTS =

tcp-echo-server: CMakeFiles/tcp-echo-server.dir/checksum.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/listener.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/logger.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/login-server.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/main.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/server.cpp.o
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/build.make
tcp-echo-server: CMakeFiles/tcp-echo-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable tcp-echo-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp-echo-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcp-echo-server.dir/build: tcp-echo-server
.PHONY : CMakeFiles/tcp-echo-server.dir/build

CMakeFiles/tcp-echo-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcp-echo-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcp-echo-server.dir/clean

CMakeFiles/tcp-echo-server.dir/depend:
	cd /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server /home/elliancarlos/Projects/Pessoal/tcp-login-echo-server/server/CMakeFiles/tcp-echo-server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tcp-echo-server.dir/depend

