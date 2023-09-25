extends Button
	
func _on_Celular_ut_mouse_entered():
	
	$Sprite.modulate.r = 0.8
	$Sprite.modulate.g = 0.8
	$Sprite.modulate.b = 0.8
	pass # Replace with function body.


func _on_Celular_ut_mouse_exited():
	
	$Sprite.modulate.r = 1
	$Sprite.modulate.g = 1
	$Sprite.modulate.b = 1
	pass # Replace with function body.
func _on_Celular_ut_pressed():
	
	$Sprite.modulate.r = 0.5
	$Sprite.modulate.g = 0.5
	$Sprite.modulate.b = 0.5
	get_tree().change_scene("res://cc1.tscn")
	pass # Replace with function body.
func _ready():
	set_process_input(true) 
func _input(event):
	if event is InputEventKey:
		if event.pressed and (event.scancode == KEY_V ):
			get_tree().change_scene("res://cc1.tscn")
	
