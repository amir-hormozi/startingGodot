extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var diretion = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = diretion * 600
	move_and_slide()
	
	if velocity.length() > 0:
		#$HappyBoo.play_walk_animation()
		#get_node("HappyBoo").play_walk_animation()
		%HappyBoo.play_walk_animation()
	else:
		#$HappyBoo.play_idle_animation()
		#get_node("HappyBoo"). ()
		$HappyBoo.play_idle_animation()
	 
