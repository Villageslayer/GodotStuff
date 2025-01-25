class_name RightScreen
extends Screen

# Define the size and position of the right screen
func _init() -> void:
	self.dimensions = Globals.layout.bounds.right
	self.position = Globals.layout.offsets.right


func _ready():
	
	# Create left bound line
	self.add_bg(self.bg_texture)
