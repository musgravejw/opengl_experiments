#version 330 core
layout(location = 0) in vec3 vertexPosition_modelspace;

// Ouput data
out vec3 color;

void main() {
	gl_Position.xyz = vertexPosition_modelspace;
  	gl_Position.w = 1.0;
}
