class_name FlipperLeft
extends CharacterBody2D

@export var max_angle := -PI/4
@export var min_angle := PI/4
@export var speed := 40

func _ready() -> void:
	self.position = Vector2(32,405-32)
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		rotation -= (speed * delta)
	else:
		rotation += (speed * delta)
		
	if rotation < max_angle:
		rotation = max_angle

	if rotation > min_angle:
		rotation = min_angle
		
