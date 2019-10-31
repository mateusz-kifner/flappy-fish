extends Node

var pause = true

func _ready():
	get_tree().paused = true

func _process(delta):
	if(pause and Input.is_action_pressed("ui_accept")):
		pause = false
		get_tree().paused = pause
		global.game_end = false
#	if(global.game_end):
#		rect_position.x = get_node("/root/App/Game/Camera2D").position.x -100
	
