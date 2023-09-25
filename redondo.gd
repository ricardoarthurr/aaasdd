extends Node2D



var timeline_name="intro"
var dialogic=Dialogic.start(timeline_name)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func start_dialog():
	var dialog = Dialogic.start(timeline_name)
	#Dialogic.start("laura")
	dialog.connect("timeline_end", self, "_on_timeline_end")
	add_child(dialog)
func _on_timeline_end(dialog):
	Global.can_move=true
	get_tree().change_scene("res://level01.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	Global.can_move=false
	start_dialog()
	
	
