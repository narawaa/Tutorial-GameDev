extends StaticBody2D

@export var speed = 500.0
var last_motion := Vector2.ZERO

const LEFT_LIMIT = 0.0
const RIGHT_LIMIT = 1010.0

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	
	last_motion = Vector2.ZERO
	
	if direction != Vector2.ZERO:
		last_motion = direction.normalized() * speed * delta
		position += last_motion
		
		position.x = clamp(position.x, LEFT_LIMIT, RIGHT_LIMIT)
