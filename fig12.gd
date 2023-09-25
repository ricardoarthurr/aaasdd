extends Area2D
var player="amanda"
var npc="NPC"
func start_dialog():
	var dialog = Dialogic.start("timeline-1691010552")
	#Dialogic.start("laura")
	dialog.connect("timeline_end", self, "_on_timeline_end")
	add_child(dialog)
func _on_timeline_end(dialog):
	Global.can_move=true
func _on_fig12_body_entered(body):
	if body.in_group()=="player":
		Global.can_move=false
		Dialogic.start("laura")
		start_dialog()
