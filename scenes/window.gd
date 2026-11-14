extends Node2D


func _on_back_to_kitchen_button_up() -> void:
	GameController.last_teleport = "window"
	GameController.set_scene_kitchen()
	
