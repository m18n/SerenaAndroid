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
CMAKE_SOURCE_DIR = /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug

# Include any dependencies generated for this target.
include CMakeFiles/ClientSerena.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ClientSerena.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClientSerena.dir/flags.make

CMakeFiles/ClientSerena.dir/client.cpp.o: CMakeFiles/ClientSerena.dir/flags.make
CMakeFiles/ClientSerena.dir/client.cpp.o: ../../client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ClientSerena.dir/client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClientSerena.dir/client.cpp.o -c /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/client.cpp

CMakeFiles/ClientSerena.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClientSerena.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/client.cpp > CMakeFiles/ClientSerena.dir/client.cpp.i

CMakeFiles/ClientSerena.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClientSerena.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/client.cpp -o CMakeFiles/ClientSerena.dir/client.cpp.s

CMakeFiles/ClientSerena.dir/main.cpp.o: CMakeFiles/ClientSerena.dir/flags.make
CMakeFiles/ClientSerena.dir/main.cpp.o: ../../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClientSerena.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClientSerena.dir/main.cpp.o -c /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/main.cpp

CMakeFiles/ClientSerena.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClientSerena.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/main.cpp > CMakeFiles/ClientSerena.dir/main.cpp.i

CMakeFiles/ClientSerena.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClientSerena.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/main.cpp -o CMakeFiles/ClientSerena.dir/main.cpp.s

# Object files for target ClientSerena
ClientSerena_OBJECTS = \
"CMakeFiles/ClientSerena.dir/client.cpp.o" \
"CMakeFiles/ClientSerena.dir/main.cpp.o"

# External object files for target ClientSerena
ClientSerena_EXTERNAL_OBJECTS =

libClientSerena.so: CMakeFiles/ClientSerena.dir/client.cpp.o
libClientSerena.so: CMakeFiles/ClientSerena.dir/main.cpp.o
libClientSerena.so: CMakeFiles/ClientSerena.dir/build.make
libClientSerena.so: CMakeFiles/ClientSerena.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libClientSerena.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ClientSerena.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClientSerena.dir/build: libClientSerena.so

.PHONY : CMakeFiles/ClientSerena.dir/build

CMakeFiles/ClientSerena.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ClientSerena.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ClientSerena.dir/clean

CMakeFiles/ClientSerena.dir/depend:
	cd /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug /home/misha/AndroidStudioProjects/Test/app/src/main/cpp/clientSerena/build/Debug/CMakeFiles/ClientSerena.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ClientSerena.dir/depend

