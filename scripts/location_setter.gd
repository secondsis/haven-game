extends Node2D

func _ready() -> void:
	var start_pos : Vector2
	if GameController.last_teleport == "kitchen":
		start_pos = $FromKitchen.position
		%Player.target_position = start_pos
		%Player.position = start_pos

	elif GameController.last_teleport == "upstairs":
		start_pos = $FromUpstairs.position
		%Player.target_position = start_pos
		%Player.position = start_pos
	
	
