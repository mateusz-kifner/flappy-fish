extends KinematicBody2D

var vel_x = 700

var vel_y = 0 
var accel_y = 0

var pressed = false

func _ready():
	pass
	
	
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if not(pressed):
			vel_y = 0
			pressed = true
		accel_y = -50
	else:
		pressed = false
		accel_y = 50
	
	if(position.y > get_viewport_rect().size.y/2 or position.y < -get_viewport_rect().size.y/2):
		global.game_end = true
		get_tree().paused = true
	
	vel_y += accel_y
	
	look_at(Vector2(500,vel_y))
	
	move_and_collide(Vector2(vel_x,vel_y)*delta)
