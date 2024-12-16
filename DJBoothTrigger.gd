extends Area2D

@onready var popup = $"../../Popup2"  # Adjust the path to Popup2
@onready var play_button = $"../../Popup2/PlayButton"  # Adjust the path to PlayButton
@onready var audio_player = $"../../AudioStreamPlayer2D"  # Adjust the path to AudioStreamPlayer2D

# Playlist of song paths
var playlist = [
	"res://audio/espresso.mp3",
	"res://audio/love.mp3",
	"res://audio/thehills.mp3",
	"res://audio/apt.mp3"
]

var current_song_index = 0  # Index of the current song in the playlist

func _on_body_entered(body):
	if body.name == "Player":
		if popup != null:
			popup.visible = true  # Show the popup
		else:
			print("Error: Popup2 is null!")

func _on_body_exited(body):
	if body.name == "Player":
		if popup != null:
			popup.visible = false  # Hide the popup

func _on_play_button_pressed():
	print("Play Button Pressed!")  # Debug message
	play_next_song()  # Start the playlist
	
	if popup != null:
		popup.visible = false  # Hide the popup

# Function to play the next song in the playlist
func play_next_song():
	if current_song_index < playlist.size():
		var next_song_path = playlist[current_song_index]
		var next_song = load(next_song_path)  # Use load() for dynamic paths
		
		if audio_player != null and next_song != null:
			audio_player.stream = next_song  # Set the new song to the audio player
			audio_player.play()  # Start playing the song
			print("Playing song: ", next_song_path)
		else:
			print("Error: Audio Player or next song is null!")
		
		# Increment the index to move to the next song
		current_song_index += 1
	else:
		print("Playlist finished!")
		current_song_index = 0  # Reset the playlist if all songs are played

# Trigger the next song when the current song finishes
func _on_AudioStreamPlayer2D_finished():
	play_next_song()
