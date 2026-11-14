extends Button



func _on_button_up() -> void:
	%dialogue.visible = true
	await get_tree().create_timer(5).timeout
	%dialogue.visible = false
