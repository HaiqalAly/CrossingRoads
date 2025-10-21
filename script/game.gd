extends Node2D

var car_scene: PackedScene = preload("res://scenes/car.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Area entered by: ", body.name)


func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPosition.get_children().pick_random()
	car.position = pos_marker.position
	$Object.add_child(car)
