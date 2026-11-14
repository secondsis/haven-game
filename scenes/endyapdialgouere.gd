extends RichTextLabel

func _ready() -> void:
	
	text = "I've escaped the House!"
	
	await get_tree().create_timer(3.0).timeout
	
	text = "I'm free, and now I'll finally be able to chase my dreams as a black cat."
	
	await get_tree().create_timer(10.0).timeout
	
	get_tree().quit()
