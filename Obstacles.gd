extends Node2D

var obstacle = preload("res://Obstacle.tscn")

var a=0
var camera_pos_x = 0
var pos_x =0

func _ready():
	randomize()
	for i in range(5):
		var new_obstacle = obstacle.instance()
		pos_x +=1
		new_obstacle.position.x = pos_x*500+1000
		new_obstacle.position.y = float((randi()%3)*100) 
		new_obstacle.gap = float((randi()%6)*100+200)
		add_child(new_obstacle)
	
func _process(delta):
	if a < get_child_count():
		if(camera_pos_x-300>get_child(a).position.x):
			pos_x +=1
			get_child(a).position.x = pos_x*500+1000
			get_child(a).position.y = float((randi()%3)*100) 
			get_child(a).gap = float((randi()%6)*100+200) 
			a+=1
	else:
		a=0