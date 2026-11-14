extends Node2D


func _on_back_to_main_button_up() -> void:
	GameController.last_teleport = "kitchen"
	GameController.set_scene_main()


func _on_view_window_button_button_up() -> void:
	GameController.last_teleport = "kitchen"
	GameController.set_scene_window()


func _on_pickupkey_button_up() -> void:
	if GameController.has_key:
		return
	
	GameController.has_key = true
	$Sparkle.visible = false
	$Question.visible = true
	await get_tree().create_timer(1).timeout
	$Question.visible = false
	
