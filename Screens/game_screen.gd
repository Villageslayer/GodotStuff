class_name GameScreen
extends Screen

# Define the size and position of the level

func _ready():
	self.dimensions = Globals.layout.bounds.game
	self.position = Globals.layout.offsets.game
	self.bg_texture = self.bg_alt_texture
	self.add_bg(self.bg_texture)

	# Add collision boundaries
	add_collision_boundary(Vector2(self.position.x, self.position.y), Vector2(self.position.x, self.position.y + self.dimensions.y))  # Left
	add_collision_boundary(Vector2(self.position.x + self.dimensions.x, self.position.y), Vector2(self.position.x + self.dimensions.x, self.position.y + self.dimensions.y))  # Right
	add_collision_boundary(Vector2(self.position.x, self.position.y), Vector2(self.position.x + self.dimensions.x, self.position.y))  # Top
	add_collision_boundary(Vector2(self.position.x, self.position.y + self.dimensions.y), Vector2(self.position.x + self.dimensions.x, self.position.y + self.dimensions.y))  # Bottom




func add_collision_boundary(start_point: Vector2, end_point: Vector2):
	var static_body = StaticBody2D.new()
	var collision_shape = CollisionShape2D.new()
	var shape = RectangleShape2D.new()
	
	shape.extents = Vector2((end_point - start_point).length() / 2, line_thickness / 2)
	collision_shape.shape = shape
	static_body.position = (start_point + end_point) / 2
	static_body.add_child(collision_shape)
	add_child(static_body)
