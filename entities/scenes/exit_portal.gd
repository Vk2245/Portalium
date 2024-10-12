extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D/AnimationPlayer.play("blackportal")


func _on_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/level_3.tscn")


func _on_time_portal_area_entered2(area):
	var timer_node = get_node("../timer")
	if timer_node:
			timer_node.Reset_Timer()

