class_name LeftScreen
extends Screen

# Define the size and position of the left screen
func _init() -> void:
	self.dimensions = Globals.layout.bounds.left
	self.position = Globals.layout.offsets.left

func _ready():
	# Create left bound line
	self.add_bg(self.bg_texture)
