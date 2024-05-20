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

    
    float sepiaR = (originalColor.r * 0.393) + (originalColor.g * 0.769) + (originalColor.b * 0.189);
    float sepiaG = (originalColor.r * 0.349) + (originalColor.g * 0.686) + (originalColor.b * 0.168);
    float sepiaB = (originalColor.r * 0.272) + (originalColor.g * 0.534) + (originalColor.b * 0.131);

    
    FragColor = vec4(vec3(sepiaR, sepiaG, sepiaB), originalColor.a);
}
