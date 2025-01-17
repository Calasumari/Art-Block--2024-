extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_file("res://Mebu.tscn")
		
	if Input.is_action_pressed("quit"):
		get_tree().quit()
