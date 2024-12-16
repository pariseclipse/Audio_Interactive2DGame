extends Node2D

@export var colors = [
	Color(1.0, 0.2, 0.5),  # Pink
	Color(0.2, 0.5, 1.0),  # Blue
	Color(0.7, 0.3, 1.0)   # Purple
]

@onready var lights = get_children()  # Get all child nodes under LightsContainer

func _ready():
	randomize()  # Ensure random values are unique on each run

func _process(delta):
	for light in lights:
		if light is PointLight2D:
			# Randomly pick a color
			light.color = colors[randi() % colors.size()]
			
			# Randomize energy (brightness) between 0.5 and 2.0
			light.energy = lerp(0.5, 2.0, randf())
