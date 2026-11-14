extends Node2D

var current_stage = 1

func change_scene(sceneName: String):
	load("res://scenes/" + sceneName + ".tscn")

func set_scene_kitchen():
	change_scene("kitchen")

func set_scene_upstairs():
	change_scene("upstairs")

func set_scene_main():
	change_scene("main")
