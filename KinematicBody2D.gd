extends KinematicBody2D
export (int) var speed = 100
var velocity = Vector2()
var animation= "idle"
#eusousocrates
#Blablabla
func get_input():
	velocity.x=0
	
	var move_direction=int(Input.is_action_pressed("moveright"))-int(Input.is_action_pressed("moveleft"))
	velocity = Vector2()
	if Input.is_action_pressed("moveright"):
	
		velocity.x += 1
	if Input.is_action_pressed("moveleft"):
		velocity.x -= 1
	if Input.is_action_pressed("movedown"):
		velocity.y += 1
	if Input.is_action_pressed("moveup"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	if move_direction!=0:
		$texture.scale.x=move_direction
func set_animation():
	animation= "idle"
	if velocity.x!=0:
		animation="walkside"
	if velocity.y!=0:
		if Input.is_action_pressed("movedown"):
			animation="walkdown"
		if Input.is_action_pressed("moveup"):
			animation="walkup"
	if $animation.assigned_animation != animation:
		$animation.play(animation)
func _physics_process(delta:float) -> void:
	if Global.can_move==true:
		get_input()
		velocity = move_and_slide(velocity)
		set_animation()
	elif Global.can_move==false:
		var animation= "idle"
		$animation.play(animation)





