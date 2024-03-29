#version 130

uniform vec3 uColor, uLight;
uniform sampler2D uTexUnit0; 
uniform int solid_color;

in vec3 vNormal;
in vec2 vTexCoord0; 
in vec3 vPosition;

out vec4 fragColor;

void main() {
  if (solid_color == 0) {
    vec4 texColor0 = texture(uTexUnit0, vTexCoord0); // get texture color
    fragColor = 0.3 * vec4(uColor, 1.0) + 0.7 * texColor0; // mix color with texture0
    
    vec3 tolight = normalize(uLight - vPosition);
    vec3 normal = normalize(vNormal);
    
    float diffuse = max(0.0, dot(normal, tolight));
    vec3 intensity =  uColor * diffuse;
    
    fragColor = 0.5 * fragColor + 0.5 * vec4(intensity, 1.0);
  }
  else if (solid_color == 4) {
    fragColor = vec4(uColor, 0.8);
  }
  else {
    fragColor = vec4(uColor, 1.0);
  }
}
