extends RichTextLabel


func _ready() -> void:
	
	text = "I remember now, I was never in the house. I'm not even a cat."
	
	await get_tree().create_timer(3.0).timeout
	
	text = "My sister, Luna, broke under the pressure of this hospital, but I won't. I can still bounce back from this..."
	
	await get_tree().create_timer(10.0).timeout
	
	get_tree().quit()
