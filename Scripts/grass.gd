extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_exited(body: Node2D) -> void:
	body.max_speed = 1500.0
	body.friction = 1000.0

func _on_body_entered(body: Node2D) -> void:
	body.max_speed = 300.0
	body.friction = 2000.0
