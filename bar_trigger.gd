extends Area2D

@onready var popup = $"../Popup"

func _on_body_entered(body):
	print("Entered: ", body.name)  # Debug message
	if body.name == "Player":
		popup.visible = true  # Show popup

func _on_body_exited(body):
	if body.name == "Player":
		popup.visible = false  # Hide popup
