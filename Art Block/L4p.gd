extends StaticBody2D

func _ready():
	self.position.x = 0
	self.position.y = 0
	$SignalBox.connect("pink",hidetime)
	$SignalBox.connect("yellow",showtime)
	$SignalBox.connect("blue",showtime)
	
func hidetime():
	self.position.y = -3000
func showtime():
	self.position.y = 0
	
