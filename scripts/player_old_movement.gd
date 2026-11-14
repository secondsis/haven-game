extends CharacterBody2D

# How fast the player moves in meters per second.
@export var speed = 400.0
# The downward acceleration when in the air, in meters per second squared.

var target_velocity = Vector2.ZERO

func _physics_process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_up"):

		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if direction != Vector2.ZERO:
		direction = direction.normalized()
	
	target_velocity.x = direction.x * speed
	target_velocity.y = direction.y * speed


	# Moving the Character
	velocity = target_velocity
	move_and_slide()
