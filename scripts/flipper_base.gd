extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready(is_left:bool=true) -> void:
	self.is_left = is_left


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
