extends Node2D

export var camera_pos_x= 0
onready var bg_sprite = preload("res://Background_Sprite.tscn")

var a=0
var pos_x =0

func _ready():
	for i in get_child_count():
		var new_bg = bg_sprite.instance()
		pos_x = i
		new_bg.position.x = 150*pos_x -300
		add_child(new_bg)

func _process(delta):
	if a < get_child_count():
		if(camera_pos_x-300>get_child(a).position.x):
			pos_x +=1
			get_child(a).position.x = 150*pos_x -300
			a+=1
	else:
		a=0