extends CanvasLayer

var time_spent := 0

@onready var timer = $Timer
@onready var label = $Label

func _ready():
	label.text = "Time: 00:00"
	timer.wait_time = 1.0
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	time_spent += 1
	var minutes = time_spent / 60
	var seconds = time_spent % 60
	label.text = "Time: %02d:%02d" % [minutes, seconds]
