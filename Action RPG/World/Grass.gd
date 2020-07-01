extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		var world = get_tree().current_scene
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()				
		
		grassEffect.global_position = global_position
		
		world.add_child(grassEffect)
		
		queue_free()
