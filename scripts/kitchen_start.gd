extends Node2D

func _ready() -> void:
	if GameController.current_stage == 1:
		%Background.texture = load("res://assets/sprites/stage1_kitchen.png")
	elif GameController.current_stage == 2:
		%Background.texture = load("res://assets/sprites/stage2_kitchen.webp")
	elif GameController.current_stage == 3:
		%Background.texture = load("res://assets/sprites/stage3_kitchen.webp")
