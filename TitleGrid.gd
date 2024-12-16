extends Node2D

@onready var tiles = get_children()

func _process(delta):
	var time = Time.get_ticks_msec() / 1000.0  # Current time in seconds
	
	for i in range(tiles.size()):
		var tile = tiles[i]
		
		# Create smoother, more vibrant transitions between pink, blue, and purple
		var r = (sin(time + i * 0.3) * 0.6) + 0.8  # Red: More intense for vibrant pink
		var g = (sin(time + i * 0.5 + 2.0) * 0.6) + 0.6  # Green: Slightly brighter for richness
		var b = (sin(time + i * 0.7 + 4.0) * 0.6) + 0.8  # Blue: More intense for vibrant blue/purple
		
		# Ensure RGB values stay within 0.6 - 1.0 for vibrant colors
		r = clamp(r, 0.6, 1.0)
		g = clamp(g, 0.6, 1.0)
		b = clamp(b, 0.6, 1.0)
		
		# Apply the vibrant color to the tile
		tile.modulate = Color(r, g, b, 1.0)
