extends Node2D

@onready var Videotime = $Control/Opening 

func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)

func _process(delta):
	if Input.is_action_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_pressed("enter"):
		print("GameStart")
		Videotime.play()
		$Timer.start()
		
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://node.tscn")
		


	
