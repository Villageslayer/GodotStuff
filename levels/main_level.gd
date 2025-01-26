extends Node2D

var isSucking
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	isSucking = false
	Engine.register_singleton("isAlive", $AliveNode)
	Engine.get_singleton("isAlive").set_isAlive(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Engine.get_singleton("isAlive").get_isAlive()):
		pass
	
	if(Input.is_action_pressed("suck")):
		if(!isSucking):
			isSucking = true
	pass
