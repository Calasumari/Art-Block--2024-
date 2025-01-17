extends Sprite2D

#create a signal with keyword "signal"

signal red

func _process(delta):
	if Input.is_action_just_pressed("colour"):
		emit_signal("red")
		
