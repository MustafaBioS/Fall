extends CharacterBody2D
@onready var scorelb = $Score/ScoreLabel
var fall_speed = 15.0

func _physics_process(delta: float) -> void:
	if State.paused == false:
		
		velocity.x = 0
		velocity.y = fall_speed

		move_and_slide()
		
	if global_position.y > get_viewport_rect().size.y + 50:
		queue_free()
		print("deleted")

func _on_leaf_area_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		print("Hit")
		if State.boost == false:
			get_tree().root.get_node("World/Score").add_score()
		if State.boost == true:
			get_tree().root.get_node("World/Score").add_boosted_score()
		queue_free()
