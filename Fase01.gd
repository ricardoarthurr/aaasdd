extends Node2D

func _ready():
	$controls/startbutton.grab_focus()


func _on_startbutton_pressed() -> void:
	get_tree().change_scene("res://redondo.tscn")
	
func _on_controlsbutton_pressed() -> void:
	var controlScreen = load("res://controlsScreen.tscn").instance()
	get_tree().current_scene.add_child(controlScreen)

func _on_quitbutton_pressed() -> void:
	get_tree().quit()

