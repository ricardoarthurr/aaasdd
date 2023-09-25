extends Node2D
var player= "Amanda"

func _on_saida_body_entered(body):
	if body.get_name()==player:
		Global.missao02_conclued = true
		Global.player_on_area_msg = true
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://level01_rua.tscn")

func _on_missao_toggled(button_pressed):
	yield(get_tree().create_timer(2.0), "timeout")
	$missao.queue_free()
	Global.missao01_conclued = true
	
	print("clicked")


func _on_exit_pressed():
	pass # Replace with function body.


func _on_exit_mouse_entered():
	pass # Replace with function body.
