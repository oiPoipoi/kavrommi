extends Area2D
var win = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	pass


func _on_area_exited(area: Area2D) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if win == true:
		get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")


func _on_body_exited(body: Node2D) -> void:
	if win == false:
		win = true
