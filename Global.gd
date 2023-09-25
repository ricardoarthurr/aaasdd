extends Node
var can_move:bool = true
var player_on_area_msg: bool = false
var mission_conclued:bool = false
var missao01_conclued = false
var missao02_conclued:bool = false
func _ready():
	if player_on_area_msg== true:
		mission_conclued=true
