extends CharacterBody2D

@export var max_speed: float = 300.0
@export var acceleration: float = 1500.0
@export var friction: float = 2000.0
@export var push_force: float = 200.0 

func _physics_process(delta: float) -> void:
	var input_vector: Vector2 = Input.get_vector("a", "d", "w", "s")
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * max_speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
		
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		
		if collider is RigidBody2D:
			collider.apply_central_impulse(-collision.get_normal() * push_force)
