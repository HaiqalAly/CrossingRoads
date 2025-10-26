extends Control

func _ready() -> void:
	$Label2.text = "High score: " + str(Global.score)

func _process(_delta):
	if Input.is_action_just_pressed("confirm"):
		get_tree().change_scene_to_file("res://scenes/game.tscn")
