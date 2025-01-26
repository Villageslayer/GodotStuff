extends Node2D

func _ready() -> void:
	Engine.register_singleton("score", $Score)
