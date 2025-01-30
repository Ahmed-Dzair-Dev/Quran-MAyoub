cmake_minimum_required(VERSION 3.10)
project(QuranPlayer C)

# Find required packages
find_package(SDL2 REQUIRED)
find_package(CURL REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK4 REQUIRED gtk4)

# Define executable and source files
add_executable(quran_player 
    src/main.c
    src/downloader.c
    src/player.c
    src/gui.c
)

# Include directories
target_include_directories(quran_player PRIVATE 
    ${SDL2_INCLUDE_DIRS}
    ${CURL_INCLUDE_DIRS}
    ${GTK4_INCLUDE_DIRS}
    include
)

# Link libraries
target_link_libraries(quran_player PRIVATE
    ${SDL2_LIBRARIES}
    ${CURL_LIBRARIES}
    ${GTK4_LIBRARIES}
)

# Set C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Add compiler warnings
target_compile_options(quran_player PRIVATE -Wall -Wextra)
