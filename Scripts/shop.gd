extends Control
@onready var item = $Item
@onready var item_2 = $Item2

func _process(delta: float) -> void:
	if State.score <= 50:
		item_2.disabled = true
	if State.score <= 150:
		item.disabled = true

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_item_pressed() -> void:
	State.score -= 50
	State.SPEED = 200.0


func _on_item_2_pressed() -> void:
	State.score -= 150
	State.boost = true
	print("boosted")
