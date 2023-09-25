extends CheckBox

onready var checkbox = $"."
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta)-> void:
	visible = false
	if Global.missao01_conclued == true:
		yield(get_tree().create_timer(1.0), "timeout")
		visible= true
	if Global.missao02_conclued == true :
			checkbox.pressed = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_area_msg_body_entered(body):
	pass # Replace with function body.
