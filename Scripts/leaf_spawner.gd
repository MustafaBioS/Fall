extends Node2D

@onready var spawner_positions = $Spawner.get_children()
var leaf_scene = preload("res://Scenes/leaf.tscn")
@onready var time = $Timer

func _ready() -> void:
	randomize()

func _process(delta: float) -> void:
	if State.time == true:
		time.wait_time = 1.0

func spawn() -> void:
	if spawner_positions.is_empty():
		return

	var index = randi() % spawner_positions.size()
	var leaf = leaf_scene.instantiate()

	leaf.global_position = spawner_positions[index].global_position
	add_child(leaf)

func _on_timer_timeout() -> void:
	spawn()
