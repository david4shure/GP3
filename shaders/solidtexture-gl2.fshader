uniform vec3 uColor;
uniform sampler2D uTexUnit0; 

varying vec2 vTexCoord0;

void main() {
  vec4 texColor0 = texture2D(uTexUnit0, vTexCoord0); // get texture color 
  gl_FragColor = 0.3 * vec4(uColor, 1.0) + 0.7 * texColor0; // mix color with texture0
}

