extends StaticBody2D

@onready var _animated_sprite = $AnimatedSprite2D


func hit():
	_animated_sprite.play()
	Engine.get_singleton("score").add_points(100)
