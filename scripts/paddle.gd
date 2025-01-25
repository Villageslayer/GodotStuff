extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var parent = get_parent()
	# Load the texture from the file system
	if parent.is_left:
		self.texture = load("res://assets/paddle_left.png")
	else:
		self.texture = load("res://assets/paddle_right.png")
	# Assign the texture to the Sprite node
	self.texture = texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
