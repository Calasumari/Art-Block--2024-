extends AnimatedSprite2D

#create a signal with keyword "signal"

#creates the signal
signal red

#sets a variable
var _colouramount = 0

func _process(delta):
	if Input.is_action_just_pressed("colour"):
		emit_signal("red")
		
#this signal is then carried over to ColoutTest.gd where it is used to change the colour
#now make one that opens the menu then one that picks the colour, e.g.
	#space to open menu, 1 to pick red, 2 to pick blue, 3 to pick purple etc etc
		
