extends Node2D


func _on_exit_upstairs_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameController.last_teleport = "upstairs"
		GameController.set_scene_main()
