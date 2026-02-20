extends RigidBody2D

const LEFT_LIMIT = 0.0
const RIGHT_LIMIT = 1100.0

func _ready():
	contact_monitor = true
	max_contacts_reported = 5

func _physics_process(delta):
	for body in get_colliding_bodies():
		if body is StaticBody2D and "last_motion" in body:
			global_position.x += body.last_motion.x
	
	global_position.x = clamp(global_position.x, LEFT_LIMIT, RIGHT_LIMIT)
