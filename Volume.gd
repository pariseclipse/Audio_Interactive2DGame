extends HSlider

@onready var music_player = $"../AudioStreamPlayer2D"  # Reference to AudioStreamPlayer2D

func _on_value_changed(value):
	if music_player:
		music_player.volume_db = linear_to_db(value)  # Convert value (0 to 1) to decibels
		print("Volume set to: ", value, " (dB: ", music_player.volume_db, ")")
	else:
		print("Error: AudioStreamPlayer2D not found!")
