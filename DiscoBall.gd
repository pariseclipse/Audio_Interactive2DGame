extends Node2D

var swing_speed = 2.0  # Speed of the swing (lower is slower, higher is faster)
var swing_angle = 10.0  # Maximum swing angle in degrees (reduce this for less swing)

func _process(delta):
	# Use a sine wave to oscillate the rotation angle
	rotation_degrees = sin(Time.get_ticks_msec() / 1000.0 * swing_speed) * swing_angle
