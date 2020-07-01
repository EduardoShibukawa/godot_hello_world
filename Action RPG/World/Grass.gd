extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()				
		
		get_parent().add_child(grassEffect)
		grassEffect.position = self.position
		
		queue_free()
