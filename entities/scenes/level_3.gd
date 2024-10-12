extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_final_time_area_entered(area):
	var destroyobj=get_node("StaticBody2D7")
	destroyobj.position.x=-50.25
	destroyobj.position.y=-470.85
	var player= get_node("player")
	player.position.x=150
	player.position.y =-125
	var timer_node = get_node("timer")
	if timer_node:
			timer_node.Reset_Timer()




func _on_arrow_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth.tscn")
