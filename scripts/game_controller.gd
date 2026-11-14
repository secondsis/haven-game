extends Node2D

var current_stage = 1

var last_teleport = ""

var has_key = false

func change_scene(sceneName: String):
	get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")

func set_scene_kitchen():
	change_scene("kitchen")

func set_scene_upstairs():
	change_scene("upstairs")

func set_scene_main():
	change_scene("main")
func set_scene_window():
	change_scene("window")
