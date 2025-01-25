class_name Screen
extends Node2D

var dimensions:Vector2

var bg:Sprite2D
var bg_texture = preload("res://assets/dirt_bg_W180.png")
var bg_alt_texture = preload("res://assets/GameMock.png")
var border_color = Color(0, 1, 0)  # Green color
var line_thickness = 2.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func add_bg(texture):
	self.bg = Sprite2D.new()
	self.bg.texture=self.bg_texture
	self.bg.centered = false
	self.bg.offset = self.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
