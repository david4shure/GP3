#version 130

uniform vec3 uColor;
uniform int solid_color;

out vec4 fragColor;

void main() {
  if (solid_color == 4) {
    fragColor = vec4(uColor, 0.8);
  }
  else {
    fragColor = vec4(uColor, 1.0);
  }
  
}
