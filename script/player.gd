extends Node2D

var direction: Vector2 = Vector2(1, 0)
var speed: int = 5

func _physics_process(delta: float) -> void:
	position += direction * speed
