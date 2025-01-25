extends Node

class Layout:
	class Bounds:
		var total: Vector2
		var left: Vector2
		var game: Vector2
		var right: Vector2

		# Constructor to initialize the properties
		func _init(total: Vector2 = Vector2(720, 405)):
			self.total = total
			self.left = Vector2(180, total.y)
			self.game = Vector2(360, total.y)
			self.right = Vector2(180, total.y)
	
	class Offsets:
		var left: Vector2
		var game: Vector2
		var right: Vector2

		# Constructor to initialize the properties
		func _init():
			self.left = Vector2(0, 0)
			self.game = Vector2(180, 0)
			self.right = Vector2(720-180, 0)

	var bounds: Bounds
	var offsets: Offsets

	# Constructor to initialize bounds and offsets
	func _init():
		self.bounds = Bounds.new()
		self.offsets = Offsets.new()

var layout: Layout
var bounds: Layout.Bounds
var offsets: Layout.Offsets 
func _init() -> void:
	layout = Layout.new()
	self.layout = layout

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
