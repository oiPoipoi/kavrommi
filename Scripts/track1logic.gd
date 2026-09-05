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
	if check1 == false:
		check1 = true

func _on_check_2_body_entered(body: Node2D) -> void:
	if check1 == true && check2 == false:
		check2 == true
