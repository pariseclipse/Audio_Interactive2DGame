extends Node2D

@onready var tiles = get_children()

func _process(delta):
	var time = Time.get_ticks_msec() / 1000.0  # Current time in seconds
	
	for i in range(tiles.size()):
		var tile = tiles[i]
		
		# Create smooth transitions between pink, blue, and purple
		var r = (sin(time + i * 0.3) * 0.3) + 0.7  # Red: Higher range for pink/purple
		var g = (sin(time + i * 0.5 + 2.0) * 0.2) + 0.5  # Green: Lower for pastel tones
		var b = (sin(time + i * 0.7 + 4.0) * 0.3) + 0.7  # Blue: Higher range for blue/purple
		
		# Ensure RGB values stay within the 0.5 - 0.9 range for soft pastel colors
		r = clamp(r, 0.5, 0.9)
		g = clamp(g, 0.5, 0.7)
		b = clamp(b, 0.5, 0.9)
		
		# Apply the pastel color to the tile
		tile.modulate = Color(r, g, b, 1.0)
