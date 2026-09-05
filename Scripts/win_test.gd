extends Node
var check1 = false
var check2 = false
var check3 = false
var check4 = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_exited(body: Node2D) -> void:
	print("hi1")
	if check1 == false:
		check1 = true
		print("bye1")

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	print("hi2")
	if check1 == true && check2 == false:
		check2 = true
		print("bye2")

func _on_area_2d_3_body_entered(body: Node2D) -> void:
	print("hi3")
	if check2 == true && check3 == false:
		print("bye3")
		check3 = true


func _on_area_2d_4_body_entered(body: Node2D) -> void:
	print("hi4")
	if check3 == true && check4 == false:
		check4 = true
		print("bye4")

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("hi5")
	if check4 == true:
		get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")
		print("bye5")

func _on_area_2d_body_entered_2(body: Node2D) -> void:
	pass
