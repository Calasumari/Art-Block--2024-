extends Sprite2D

var _colouramount = 0

#this just turns the class into a variable that can be used within 
@onready var _animated_sprite = $ColourBG

#the "ready" function - just everything that the class needs to do as it is called into the scene
func _ready() -> void:
	_animated_sprite.play("Blue")
	$ColourBG.connect("red",colourchange)
	
#still not too sure what "-> void" does but it seemed to be on all the tutorials
func colourchange() -> void:
	if _colouramount == 1:
		_animated_sprite.play("Red")
		print("red")
	elif _colouramount == 2:
		_animated_sprite.play("Orange")
		print("orange")
	elif _colouramount == 3:
		_animated_sprite.play("Yellow")
		print("yellow")
	elif _colouramount == 4:
		_animated_sprite.play("Green")
		print("green")
	elif _colouramount == 5:
		_animated_sprite.play("Blue")
		print("blue")
	_colouramount = _colouramount + 1
	if _colouramount == 7:
		_animated_sprite.play("Purple")
		print("purple")
		_colouramount = 0
