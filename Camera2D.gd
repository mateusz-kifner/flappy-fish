extends Camera2D

func _process(delta):
	move_local_x(delta*700)
	get_node("../Background").camera_pos_x = int(position.x - (get_viewport_rect().size.x/2))
	get_node("../Obstacles").camera_pos_x = int(position.x - (get_viewport_rect().size.x/2))
	