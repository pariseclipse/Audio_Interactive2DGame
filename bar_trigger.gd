extends Area2D

@onready var popup = $"../Popup"  # Reference to the popup
@onready var drink_sprite = $"../Player/DrinkSprite"  # Correct path to DrinkSprite

func _on_body_entered(body):
	print("Entered: ", body.name)  # Debug message
	if body.name == "Player":
		popup.visible = true  # Show the popup

func _on_body_exited(body):
	if body.name == "Player":
		popup.visible = false  # Hide the popup

func _on_yes_button_pressed():
	print("Yes Button Pressed!")  # Debug to confirm button works
	if drink_sprite:
		drink_sprite.visible = true  # Show the drink in the player's hand
		print("Drink Sprite is now visible!")
	else:
		print("Error: DrinkSprite not found!")
	popup.visible = false  # Hide the popup
