# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/suloly/Quran-MAyoub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suloly/Quran-MAyoub/build

# Include any dependencies generated for this target.
include CMakeFiles/quran_player.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/quran_player.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/quran_player.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/quran_player.dir/flags.make

CMakeFiles/quran_player.dir/src/main.c.o: CMakeFiles/quran_player.dir/flags.make
CMakeFiles/quran_player.dir/src/main.c.o: /home/suloly/Quran-MAyoub/src/main.c
CMakeFiles/quran_player.dir/src/main.c.o: CMakeFiles/quran_player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suloly/Quran-MAyoub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/quran_player.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/quran_player.dir/src/main.c.o -MF CMakeFiles/quran_player.dir/src/main.c.o.d -o CMakeFiles/quran_player.dir/src/main.c.o -c /home/suloly/Quran-MAyoub/src/main.c

CMakeFiles/quran_player.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quran_player.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suloly/Quran-MAyoub/src/main.c > CMakeFiles/quran_player.dir/src/main.c.i

CMakeFiles/quran_player.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quran_player.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suloly/Quran-MAyoub/src/main.c -o CMakeFiles/quran_player.dir/src/main.c.s

CMakeFiles/quran_player.dir/src/downloader.c.o: CMakeFiles/quran_player.dir/flags.make
CMakeFiles/quran_player.dir/src/downloader.c.o: /home/suloly/Quran-MAyoub/src/downloader.c
CMakeFiles/quran_player.dir/src/downloader.c.o: CMakeFiles/quran_player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suloly/Quran-MAyoub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/quran_player.dir/src/downloader.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/quran_player.dir/src/downloader.c.o -MF CMakeFiles/quran_player.dir/src/downloader.c.o.d -o CMakeFiles/quran_player.dir/src/downloader.c.o -c /home/suloly/Quran-MAyoub/src/downloader.c

CMakeFiles/quran_player.dir/src/downloader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quran_player.dir/src/downloader.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suloly/Quran-MAyoub/src/downloader.c > CMakeFiles/quran_player.dir/src/downloader.c.i

CMakeFiles/quran_player.dir/src/downloader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quran_player.dir/src/downloader.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suloly/Quran-MAyoub/src/downloader.c -o CMakeFiles/quran_player.dir/src/downloader.c.s

CMakeFiles/quran_player.dir/src/player.c.o: CMakeFiles/quran_player.dir/flags.make
CMakeFiles/quran_player.dir/src/player.c.o: /home/suloly/Quran-MAyoub/src/player.c
CMakeFiles/quran_player.dir/src/player.c.o: CMakeFiles/quran_player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suloly/Quran-MAyoub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/quran_player.dir/src/player.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/quran_player.dir/src/player.c.o -MF CMakeFiles/quran_player.dir/src/player.c.o.d -o CMakeFiles/quran_player.dir/src/player.c.o -c /home/suloly/Quran-MAyoub/src/player.c

CMakeFiles/quran_player.dir/src/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quran_player.dir/src/player.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suloly/Quran-MAyoub/src/player.c > CMakeFiles/quran_player.dir/src/player.c.i

CMakeFiles/quran_player.dir/src/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quran_player.dir/src/player.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suloly/Quran-MAyoub/src/player.c -o CMakeFiles/quran_player.dir/src/player.c.s

CMakeFiles/quran_player.dir/src/gui.c.o: CMakeFiles/quran_player.dir/flags.make
CMakeFiles/quran_player.dir/src/gui.c.o: /home/suloly/Quran-MAyoub/src/gui.c
CMakeFiles/quran_player.dir/src/gui.c.o: CMakeFiles/quran_player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suloly/Quran-MAyoub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/quran_player.dir/src/gui.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/quran_player.dir/src/gui.c.o -MF CMakeFiles/quran_player.dir/src/gui.c.o.d -o CMakeFiles/quran_player.dir/src/gui.c.o -c /home/suloly/Quran-MAyoub/src/gui.c

CMakeFiles/quran_player.dir/src/gui.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quran_player.dir/src/gui.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suloly/Quran-MAyoub/src/gui.c > CMakeFiles/quran_player.dir/src/gui.c.i

CMakeFiles/quran_player.dir/src/gui.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quran_player.dir/src/gui.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suloly/Quran-MAyoub/src/gui.c -o CMakeFiles/quran_player.dir/src/gui.c.s

# Object files for target quran_player
quran_player_OBJECTS = \
"CMakeFiles/quran_player.dir/src/main.c.o" \
"CMakeFiles/quran_player.dir/src/downloader.c.o" \
"CMakeFiles/quran_player.dir/src/player.c.o" \
"CMakeFiles/quran_player.dir/src/gui.c.o"

# External object files for target quran_player
quran_player_EXTERNAL_OBJECTS =

quran_player: CMakeFiles/quran_player.dir/src/main.c.o
quran_player: CMakeFiles/quran_player.dir/src/downloader.c.o
quran_player: CMakeFiles/quran_player.dir/src/player.c.o
quran_player: CMakeFiles/quran_player.dir/src/gui.c.o
quran_player: CMakeFiles/quran_player.dir/build.make
quran_player: /usr/lib/x86_64-linux-gnu/libSDL2.so
quran_player: /usr/lib/x86_64-linux-gnu/libcurl.so
quran_player: CMakeFiles/quran_player.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suloly/Quran-MAyoub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable quran_player"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quran_player.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/quran_player.dir/build: quran_player
.PHONY : CMakeFiles/quran_player.dir/build

CMakeFiles/quran_player.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/quran_player.dir/cmake_clean.cmake
.PHONY : CMakeFiles/quran_player.dir/clean

CMakeFiles/quran_player.dir/depend:
	cd /home/suloly/Quran-MAyoub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suloly/Quran-MAyoub /home/suloly/Quran-MAyoub /home/suloly/Quran-MAyoub/build /home/suloly/Quran-MAyoub/build /home/suloly/Quran-MAyoub/build/CMakeFiles/quran_player.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/quran_player.dir/depend

