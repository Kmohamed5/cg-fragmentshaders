#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    
    vec4 originalColor = texture(image, model_uv);

    
    float gray = dot(originalColor.rgb, vec3(0.299, 0.587, 0.114));

    
    FragColor = vec4(vec3(gray), originalColor.a);
}
