extends Node2D

@export_file("*.tscn") var _target_level: String

func _ready() -> void:
	$MC.connect("levelend", nextlevel)

func nextlevel() -> void:
	get_tree().change_scene_to_file(_target_level)
