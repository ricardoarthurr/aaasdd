extends Sprite
onready var msg= get_node("msg")
onready var checkbox = $"../missao"
var timeline_name="notificacao"
var player="Amanda"
var npc="NPC"
func start_dialog():
	var dialog = Dialogic.start(timeline_name)
	dialog.connect("timeline_end", self, "_on_timeline_end")
	add_child(dialog)
func _on_timeline_end(dialog):
	Global.can_move=true
func _ready():
	visible= false

func _on_area_msg_body_entered(body):
	if body.get_name()==player:
		print("entered")
		visible=true
		Global.can_move=false
		start_dialog()
		$"../area msg/CollisionShape2D".queue_free()
		checkbox.pressed = true



