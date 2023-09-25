extends Node2D

var timeline_name="intro"
var player="Amanda"
var npc="NPC"
func start_dialog():
	var dialog = Dialogic.start(timeline_name)
	dialog.connect("timeline_end", self, "_on_timeline_end")
	add_child(dialog)
func _on_timeline_end(dialog):
	Global.can_move=true

func _on_Area2D_body_entered(body):
	if body.get_name()==player:
		Global.can_move=false
		timeline_name="pedro"
		start_dialog()
