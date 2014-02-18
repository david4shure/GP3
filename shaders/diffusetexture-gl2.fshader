// TODO: Make this shader use textures and diffuse lighting

uniform vec3 uColor;

void main() {
  gl_FragColor = vec4(uColor, 1.0);
}
