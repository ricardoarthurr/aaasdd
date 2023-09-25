extends Area2D
onready var area_msg=$"."


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	area_msg.connect("body_entered", self, "_on_area_msg_body_entered")
	area_msg.connect("body_exited", self, "_on_area_msg_body_exited")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func body_exited(body):
	pass
	#queue_free()
