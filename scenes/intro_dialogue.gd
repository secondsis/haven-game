extends RichTextLabel



func _ready() -> void:
	
	text = "it's been a long time..."
	
	await get_tree().create_timer(3.0).timeout
	
	text = "but you're finally awake."
	
	await get_tree().create_timer(3.0).timeout
	
	text = ""
	
	await get_tree().create_timer(3.0).timeout
	
	text = "DON'T LOOK AT THE MOON"
	
	await get_tree().create_timer(3.0).timeout
	
	GameController.change_scene("upstairs")
