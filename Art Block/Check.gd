extends Sprite2D



func _ready() -> void:
	$ColourBG.connect("red",colourchange)
	
func colourchange() -> void:
	print("Now hidden")
	self.visible = false
