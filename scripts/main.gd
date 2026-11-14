extends Node2D



func _on_enter_kitchen_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameController.last_teleport = "main"
		GameController.set_scene_kitchen()




func _on_enter_upstairs_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameController.last_teleport = "main"
		GameController.set_scene_upstairs()


func _on_exitdoor_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if GameController.has_key:
			GameController.change_scene("ending2")
