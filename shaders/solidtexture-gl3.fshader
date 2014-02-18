#version 130

uniform vec3 uColor;
uniform sampler2D uTexUnit0; 

in vec2 vTexCoord0; 

out vec4 fragColor;

void main() {
  vec4 texColor0 = texture(uTexUnit0, vTexCoord0); // get texture color
  fragColor = 0.3 * vec4(uColor, 1.0) + 0.7 * texColor0; // mix color with texture0
}
