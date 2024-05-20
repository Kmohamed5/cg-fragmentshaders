#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    
    vec2 texCoord = (model_uv * 2.0) - 1.0;

    
    float theta = atan(texCoord.y, texCoord.x);

    
    float radius = length(texCoord);
    radius = pow(radius, 1.5);

    
    vec2 fishEyeTexCoord = vec2(radius * cos(theta), radius * sin(theta));

    
    vec2 finalTexCoord = 0.5 * (fishEyeTexCoord + 1.0);

    
    FragColor = texture(image, finalTexCoord);
}
