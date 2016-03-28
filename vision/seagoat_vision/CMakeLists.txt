cmake_minimum_required(VERSION 2.8)
project( seagoat_test )
find_package( OpenCV REQUIRED )

include_directories ("${PROJECT_SOURCE_DIR}/include")
add_subdirectory (include) 


add_executable( seagoat_vision_test test.cpp )
target_link_libraries( seagoat_vision_test ${OpenCV_LIBS} )
target_link_libraries ( seagoat_vision_test seagoat_vision)

