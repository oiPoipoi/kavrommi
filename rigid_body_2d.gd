extends RigidBody2D

@export var move_force: float = 500.0

func _ready() -> void:
	# Disable gravity for this object completely
	gravity_scale = 0.0

func _physics_process(_delta: float) -> void:
	# Get input direction vectors (e.g., WASD or Arrow Keys)
	var input_direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Apply central force to move the body smoothly in zero-G
	if input_direction != Vector2.ZERO:
		apply_central_force(input_direction * move_force)
