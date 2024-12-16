extends CharacterBody2D

@export var speed = 170  # Movement speed

func _physics_process(delta):
	var direction = Vector2.ZERO

	# Check for input
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Move the player
	position += direction.normalized() * speed * delta
