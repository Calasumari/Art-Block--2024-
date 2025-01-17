extends Node2D

@onready var _animated_sprite = $AnimatedSprite2D

func _ready():
	_animated_sprite.play("White")

signal pink
signal blue
signal yellow

func _process(delta):
	if Input.is_action_just_pressed("pink"):
		_animated_sprite.play("Pink")
		emit_signal("pink")
		print("PinkSignal")
	if Input.is_action_just_pressed("blue"):
		_animated_sprite.play("Blue")
		emit_signal("blue")
		print("BlueSignal")
	if Input.is_action_just_pressed("yellow"):
		_animated_sprite.play("Yellow")
		emit_signal("yellow")
		print("YellowSignal")
	
