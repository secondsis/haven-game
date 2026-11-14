extends Sprite2D

@export var movement_speed = 500.0

var viewport_size : Vector2
var background_size : Vector2

func _ready() -> void:
	viewport_size = get_viewport_rect().size
	background_size = self.texture.get_size()

func _physics_process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	
	var direction = (mouse_pos / viewport_size - Vector2(0.2,0.2) * 2.0)
	
	var offset = direction * movement_speed
	
	var max_offset = (background_size - viewport_size) / 2.0
	
	offset.x = clamp(offset.x, -max_offset.x, max_offset.x)
	offset.y = clamp(offset.y, -max_offset.y, max_offset.y)
	
	%Camera2D.position = offset
