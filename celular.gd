extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta:float) -> void:
	if Input.is_action_pressed("quit"):
		get_tree().change_scene("res://level01_rua.tscn")
