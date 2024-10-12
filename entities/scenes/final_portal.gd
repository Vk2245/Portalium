extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$black/AnimationPlayer.play("level3end")


func _on_arrow_prompt_back_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth_2.tscn")


func _on_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/fire.tscn")
