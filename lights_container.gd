extends Node2D

# Define colors for the lights to flash
@export var colors = [
	Color(1.0, 0.2, 0.5),  # Pink
	Color(0.2, 0.5, 1.0),  # Blue
	Color(0.7, 0.3, 1.0)   # Purple
]

# Set minimum and maximum brightness levels
@export var min_brightness = 0.5
@export var max_brightness = 1.0

@onready var lights = get_children()  # Get all child nodes under LightsContainer

func _ready():
	randomize()  # Ensure random values are unique on each run

func _process(delta):
	for light in lights:
		if light is PointLight2D:
			# Randomly change the color
			light.color = colors[randi() % colors.size()]
			
			# Randomly change the brightness
			light.energy = lerp(min_brightness, max_brightness, randf())
