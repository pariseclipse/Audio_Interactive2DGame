shader_type canvas_item;

void fragment() {
    // Create a disco reflection effect
    vec2 uv = UV;
    float speed = TIME * 2.0;  // Adjust speed of the reflections
    
    // Sine wave pattern to simulate reflections
    float grid = sin((uv.x + uv.y + speed) * 10.0) * 0.5 + 0.5;
    
    // Combine colors for pastel effect
    vec3 color = vec3(0.8, 0.5, 0.7); // Base soft pink
    color.r += grid * 0.2;  // Add a glowing effect
    color.b += sin(speed) * 0.2; // Adjust blue for a dynamic look
    color.g += cos(speed * 0.5) * 0.1; // Soft green shifts

    COLOR.rgb = color;
}
