class_name FlipperLeft
extends CharacterBody2D

@export var max_angle := -PI/4
@export var min_angle := 0.0
@export var speed := 30
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		rotation -= (speed * delta)
	else:
		rotation += (speed * delta)
		
	if rotation < max_angle:
		rotation = max_angle

	if rotation > min_angle:
		rotation = min_angle
