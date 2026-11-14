extends Node2D


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("space"):
		var tween = create_tween()
		tween.tween_property($Panel, "modulate:a", 1.0, 5.0)
		GameController.change_scene("introduction")
