tool
extends Sprite

func _ready():
	var size = get_transform().get_scale()
	scale.y = get_viewport_rect().size.y/41
	position.y = 0
	get_material().set_shader_param("aspect", size.y/size.x)
	get_material().set_shader_param("scale", size)
