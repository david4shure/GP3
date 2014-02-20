#version 130

uniform vec3 uLight, uColor;  // position and color of light
uniform int solid_color;

in vec3 vNormal;
in vec3 vPosition;

out vec4 fragColor;

void main() {
  if (solid_color == 0) {
    vec3 tolight = normalize(uLight - vPosition);
    vec3 normal = normalize(vNormal);
    
    float diffuse = max(0.0, dot(normal, tolight));
    vec3 intensity =  uColor * diffuse;

    fragColor = vec4(intensity, 1.0);
  }
  else if (solid_color == 4) {
    fragColor = vec4(uColor, 0.8);
  }
  else {
    fragColor = vec4(uColor, 1.0);
  }
}
