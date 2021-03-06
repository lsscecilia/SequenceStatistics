cmake_minimum_required(VERSION 3.2)

#set project name
project(stats VERSION "1.0")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCE src/stats.cpp)
set(CONFIGURE_FILE src/config.h.in)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

#set executable
add_executable(${PROJECT_NAME} ${SOURCE}) 

configure_file( src/config.h.in ${CMAKE_BINARY_DIR}/bin/config.h)
include_directories( ${CMAKE_BINARY_DIR}/bin/ ) # Make sure it can be included...

if (NOT TARGET bioparser)
  add_subdirectory(vendor/bioparser EXCLUDE_FROM_ALL)
endif ()

target_link_libraries(
  stats 
  bioparser
)