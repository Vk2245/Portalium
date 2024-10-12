extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var sprite_2d = $Sprite2D

var has_jumped = false
func _process(delta):
	if velocity.x==0 and velocity.y ==0 :
		sprite_2d.animation = "default"
	if Input.is_action_pressed("pause"):
		get_tree().change_scene_to_file("res://entities/scenes/resume.tscn")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		if has_jumped and velocity.y > 0: # Check if the player is not jumping and not moving horizontally
			sprite_2d.animation ="fall" # Play "fall" animation when falling
#
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		sprite_2d.play("jump") # Play "jump" animation when jumping
		has_jumped = true
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		sprite_2d.animation="run" # Play "run" animation when moving horizontally
	else:
		velocity.x = 0
		if is_on_floor() and not has_jumped: # Play "idle" animation when standing still on the ground
			sprite_2d.play("default")
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft

	move_and_slide()

func _on_Floor_body_entered(body):
	has_jumped = false


func _on_area_2d_area_entered(area):
	if area.is_in_group("portal"):
		position.x=292
		position.y=332
	if area.is_in_group("blackportal"):
		get_tree().change_scene_to_file("res://entities/scenes/level_2.tscn")




func _on_arrow_earth_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth_2.tscn")


func _on_arrow_prompt_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth_prompt.tscn")


func _on_red_portal_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth_red.tscn")


func _on_earth_exit_black_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/water.tscn")


func _on_red_exit_earth_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/earth_exit.tscn")


func _on_arrow_prompt_back_water_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/water_exit_to_fire.tscn")

func _on_red_prompt_water_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/water_prompt.tscn")


func _on_arrow_prompt_back_fire_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/fire.tscn")


func _on_fire_exit_black_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/air_2.tscn")


func _on_red_portal_fire_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/fire_red.tscn")


func _on_arrow_prompt_fire_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/fire_prompt.tscn")


func _on_red_exit_fire_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/fire_exit.tscn")


func _on_air_exit_black_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/thank_you.tscn")


func _on_red_prompt_air_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/air_2_prompt.tscn")



func _on_arrow_prompt_back_air_area_entered(area):
	get_tree().change_scene_to_file("res://entities/scenes/air_2_exit.tscn")
