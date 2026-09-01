extends CharacterBody2D

# Exposes these variables in the Inspector panel for easy tweaking
@export var max_speed: float = 300.0
@export var acceleration: float = 1500.0
@export var friction: float = 2000.0

func _physics_process(delta: float) -> void:
	# 1. Get input direction using default UI actions (or custom map actions)
	# This automatically normalizes the vector for diagonal movement
	var input_vector: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# 2. Apply movement based on input
	if input_vector != Vector2.ZERO:
		# Smoothly accelerate towards maximum speed
		velocity = velocity.move_toward(input_vector * max_speed, acceleration * delta)
	else:
		# Smoothly slide to a stop when no keys are pressed
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
		
	# 3. Apply the calculated velocity and handle collisions
	move_and_slide()
