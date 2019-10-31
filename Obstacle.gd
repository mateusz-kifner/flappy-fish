extends Node2D

export var gap : float

func _ready():
	var up = get_node("Up")
	var down = get_node("Down")
	up.position.y = -gap/2
	down.position.y = gap/2
	
func onHit(body):
	print("hit")
	global.game_end = true
	get_tree().paused = true
	



func _on_Score_body_entered(body):
	global.score +=1
	get_node("/root/App/CanvasLayer/Gui/Score").text = "Score: "+ str(global.score)
