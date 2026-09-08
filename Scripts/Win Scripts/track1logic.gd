extends Node
var check1 = false
var check2 = false
var check3 = false
var check4 = false
var check5 = false
var check6 = false
var check7 = false
var check8 = false
var check9 = false
var check10 = false
var check11 = false
var check12 = false
var check13 = false
var check14 = false



func _on_check_1_body_exited(body: Node2D) -> void:
	print("called1")
	if check1 == false:
		print("if1")
		check1 = true


func _on_check_2_body_entered(body: Node2D) -> void:
	print("called2")
	if check1 == true && check2 == false:
		print("if2")
		check2 = true


func _on_check_3_body_entered(body: Node2D) -> void:
	print("called3")
	if check2 == true and check3 == false:
		print("if3")
		check3 = true


func _on_check_4_body_entered(body: Node2D) -> void:
	print("called4")
	if check3 == true and check4 == false:
		print("if4")
		check4 = true


func _on_check_5_body_entered(body: Node2D) -> void:
	print("called5")
	if check4 == true and check5 == false:
		print("if5")
		check5 = true

func _on_check_6_body_entered(body: Node2D) -> void:
	print("called6")
	if check5 == true and check6 == false:
		print("if6")
		check6 = true

func _on_check_7_body_entered(body: Node2D) -> void:
	print("called7")
	if check6 == true and check7 == false:
		print("if7")
		check7 = true

func _on_check_8_body_entered(body: Node2D) -> void:
	print("called8")
	if check7 == true and check8 == false:
		print("if8")
		check8 = true


func _on_check_9_body_entered(body: Node2D) -> void:
	print("called9")
	if check8 == true and check9 == false:
		print("if9")
		check9 = true


func _on_check_10_body_entered(body: Node2D) -> void:
	print("called10")
	if check9 == true and check10 == false:
		print("if10")
		check10 = true


func _on_check_11_body_entered(body: Node2D) -> void:
	print("called11")
	if check10 == true and check11 == false:
		print("if11")
		check11 = true


func _on_check_12_body_entered(body: Node2D) -> void:
	print("called12")
	if check11 == true and check12 == false:
		print("if12")
		check12 = true


func _on_check_13_body_entered(body: Node2D) -> void:
	print("called13")
	if check12 == true and check13 == false:
		print("if13")
		check13 = true


func _on_check_14_body_entered(body: Node2D) -> void:
	print("called14")
	if check13 == true and check14 == false:
		print("if14")
		check14 = true


func _on_check_1_body_entered(body: Node2D) -> void:
	print("called1exit")
	if check14 == true:
		print("if1exit")
		get_tree().change_scene_to_file("res://Scenes/Tracks/test_track.tscn")
