#version 130

uniform vec3 uLight, uColor;  // position and color of light
uniform int drawSun;

in vec3 vNormal;
in vec3 vPosition;

out vec4 fragColor;

void main() {
  if (drawSun == 0) {
    vec3 tolight = normalize(uLight - vPosition);
    vec3 normal = normalize(vNormal);
    
    float diffuse = max(0.0, dot(normal, tolight));
    vec3 intensity =  uColor * diffuse;

    fragColor = vec4(intensity, 1.0);
  }
  else {
    fragColor = vec4(uColor, 1.0);
  }
}
