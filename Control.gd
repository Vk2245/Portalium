extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	Reset_Timer()
	pass 

var seconds = 0
var minutes = 0

var Dseconds = 30
var Dminutes = 0

func _on_timer_timeout():
	if seconds == 0:
		if minutes > 0:
			minutes -= 1
			seconds = 60
	else:
		seconds -= 1
	if seconds==0:
		if minutes==0:
			get_tree().change_scene_to_file("res://entities/scenes/game_over.tscn")

	$Label.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)

func Reset_Timer():
	seconds = Dseconds
	minutes = Dminutes
	$Label.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)


	



	
