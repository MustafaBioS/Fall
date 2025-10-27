extends Control
@onready var item = $Item
@onready var item_2 = $Item2
@onready var item_3 = $Item3
@onready var item_4 = $Item4
@onready var audio = $AudioStreamPlayer2D
@onready var timer: Timer = $LeafSpawner/Timer

func _process(delta: float) -> void:
	if State.score <= 25:
		item.disabled = true
	if State.score <= 50:
		item_2.disabled = true
	if State.score <= 100:
		item_3.disabled = true
	if State.score <= 125:
		item_4.disabled = true
		
	if Input.is_action_just_pressed("back"):
		get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_item_pressed() -> void:
	audio.play()
	State.score -= 25
	State.SPEED = 200.0


func _on_item_2_pressed() -> void:
	audio.play()
	State.score -= 50
	State.boost = true
	print("boosted")

func _on_item_3_pressed() -> void:
	audio.play()
	State.score -= 100
	State.time = true

func _on_item_4_pressed() -> void:
	audio.play()
	State.score -= 125
	State.season = "Winter"
