extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D/AnimationPlayer.play("new_animation")




func _on_area_entered(area):
	var exit = get_node("../exit portal")
	exit.position.x=476
	exit.position.y=11
	var player = get_node("../player")
	player.position.x=-77
	player.position.y=137
	var timer = get_node("../timer")
	if timer:
		timer.Reset_Timer()
