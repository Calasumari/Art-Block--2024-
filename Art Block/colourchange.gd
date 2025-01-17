extends Node2D

signal colourmenu

func _process(delta):
	if Input.is_action_just_pressed("color") or Input.is_action_just_pressed("click"):
		emit_signal("colourmenu")
		
