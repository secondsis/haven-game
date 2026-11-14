extends CharacterBody2D

# TAP TO MOVE
# USE MOUSE POS

@export var speed = 400.0

var target_velocity = Vector2.ZERO

var target_position : Vector2 = position

func _ready() -> void:
	target_position = position

func _input(event: InputEvent) -> void:
	if event.is_action_pressed(&"click"):
		target_position = get_global_mouse_position()
	#if event is InputEventMouseButton: 
		#if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#print("left click")
			#target_position = get_global_mouse_position()


func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if position.distance_to(target_position) > 10.0:
		if not $PlayerSprite.is_playing():
			$PlayerSprite.play("default")
		direction = position.direction_to(target_position)
		velocity = direction * speed
		move_and_slide()
	else:
		$PlayerSprite.stop()
		velocity = Vector2.ZERO
	
	# if in the middle of running and hit a wall
	# FORGET IT NVM
	
	#if Input.is_action_pressed("ui_right"):
		#direction.x += 1
	#if Input.is_action_pressed("ui_left"):
		#direction.x -= 1
	#if Input.is_action_pressed("ui_up"):
#
		#direction.y -= 1
	#if Input.is_action_pressed("ui_down"):
		#direction.y += 1
	#if direction != Vector2.ZERO:
		#direction = direction.normalized()
	#
	#target_velocity.x = direction.x * speed
	#target_velocity.y = direction.y * speed
#
#
	## Moving the Character
	#velocity = target_velocity
	#move_and_slide()
