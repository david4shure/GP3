#version 130

// TODO: Make this shader use textures and diffuse lighting

uniform vec3 uColor;

out vec4 fragColor;

void main() {
  fragColor = vec4(uColor, 1.0);
}
