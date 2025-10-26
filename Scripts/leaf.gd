extends CharacterBody2D


var fall_speed = 15.0

func _physics_process(delta: float) -> void:
	
	var collision = move_and_collide(velocity * delta)
	
	velocity.x = 0
	velocity.y = fall_speed

	move_and_slide()
	
	if collision:
		print("Hit something:", collision.get_collider())
		queue_free()
		
	if global_position.y > get_viewport_rect().size.y + 50:
		queue_free()
		print("deleted")
