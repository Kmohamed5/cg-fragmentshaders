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

    
    vec3 roundedColor = round(originalColor.rgb * 4.0) / 4.0;

    
    FragColor = vec4(roundedColor, originalColor.a);
}
