class_name RightScreen
extends Screen

# Define the size and position of the right screen



func _ready():
	self.dimensions = Globals.layout.bounds.right
	self.position = Globals.layout.offsets.right
	# Create left bound line
	self.add_bg(self.bg_texture)
