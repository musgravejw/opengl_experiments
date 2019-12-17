cmake_minimum_required(VERSION 3.10)

# set the project name
project(OGL)

find_package(OpenGL REQUIRED)

add_subdirectory (dependencies)

include_directories(
	dependencies/AntTweakBar-1.16/include/
	dependencies/glfw-3.1.2/include/
	dependencies/glm-0.9.7.1/
	dependencies/glew-1.13.0/include/
	dependencies/assimp-3.0.1270/include/
	dependencies/bullet-2.81-rev2613/src/
	.
)

set(ALL_LIBS
	${OPENGL_LIBRARY}
	glfw
	GLEW_1130
)

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)

# add the executable
add_executable(OGL01 01/01.cpp)
target_link_libraries(OGL01
	${ALL_LIBS}
)