extends Node2D

signal pink
signal blue
signal yellow

func _process(delta):
	if Input.is_action_just_pressed("pink"):
		emit_signal("pink")
		print("PinkSignal")
	if Input.is_action_just_pressed("blue"):
		emit_signal("blue")
		print("BlueSignal")
	if Input.is_action_just_pressed("yellow"):
		emit_signal("yellow")
		print("YellowSignal")
