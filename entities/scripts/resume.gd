extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://entities/scenes/main_menu.tscn")


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://entities/scenes/exit.tscn")


func _on_resume_pressed():
	get_tree().change_scene_to_file("res://entities/scenes/main_game.tscn")
