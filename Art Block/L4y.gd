extends StaticBody2D

func _ready():
	self.position.x = 0
	self.position.y = 0
	$SignalBox.connect("yellow",hidetime)
	$SignalBox.connect("blue",showtime)
	$SignalBox.connect("pink",showtime)
	
func hidetime():
	self.position.y = -3000
func showtime():
	self.position.y = 0
