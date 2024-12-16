extends Node2D

var spin_speed = 50  # Degrees per second

func _process(delta):
	# Increment rotation for smooth spinning motion
	rotation_degrees += spin_speed * delta
