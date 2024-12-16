extends Node2D

@onready var tiles = get_children()

func _process(delta):
	var time = Time.get_ticks_msec() / 1000.0  # Current time in seconds
	
	for i in range(tiles.size()):
		var tile = tiles[i]
		
		# Calculate a soft pastel color using sine waves
		var r = (sin(time + i * 0.3) * 0.5) + 0.7  # Red component (lighter range)
		var g = (sin(time + i * 0.5 + 2.0) * 0.5) + 0.7  # Green component
		var b = (sin(time + i * 0.7 + 4.0) * 0.5) + 0.7  # Blue component
		
		# Apply the pastel color to the tile
		tile.modulate = Color(r, g, b, 1.0)
