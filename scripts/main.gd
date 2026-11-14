extends Node2D



func _on_enter_kitchen_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameController.last_teleport = "main"
		GameController.set_scene_kitchen()




func _on_enter_upstairs_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameController.last_teleport = "main"
		GameController.set_scene_upstairs()


func _on_back_to_main_button_up() -> void:
	GameController.last_teleport = "kitchen"
	GameController.set_scene_main()
