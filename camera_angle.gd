extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_rotation = PI
	global_position = Vector2(360, min(get_parent().global_position.y, 202))


func _on_kill_plane_body_entered(body: Node2D) -> void:
	print("you died!")
	var parent = get_parent()
	parent.sleeping = true
	parent.linear_velocity = Vector2(0,0)
	parent.freeze = true
	parent.gravity_scale = 0
	parent.visible = false
	
	Engine.get_singleton("isAlive").set_isAlive(false)
		
	print("freeze!!!")
	pass # Replace with function body.
