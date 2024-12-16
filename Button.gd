extends Button

# Reference to the character's AnimatedSprite2D
@onready var character_animation = get_node("/root/DiscoGame/Player/AnimatedSprite2D")
var is_dancing = false  # Track if the character is dancing

func _on_pressed():
	if is_dancing:
		character_animation.stop()
		character_animation.frame = 0
		is_dancing = false
	else:
		character_animation.play("dance")
		is_dancing = true
