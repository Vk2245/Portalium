extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D/AnimationPlayer.play("yellowportal")


func _on_area_entered(area):
	var exitportal = get_node("../exit portal")
	exitportal.position.x=485
	exitportal.position.y=94
	
	var obs = get_node("../horizontal shorter2")
	obs.position.x= 750.475
	obs.position.y = 20.8
	var player =get_node("../player")
	player.position.x= 621
	player.position.y=-71
	var timer_node = get_node("../timer")
	if timer_node:
			timer_node.Reset_Timer()
