extends Node2D

@onready var spawner_positions = $Spawner.get_children()
var leaf_scene = preload("res://Scenes/leaf.tscn")

func _ready() -> void:
	randomize()
	print("randomized")

func spawn() -> void:
	if spawner_positions.is_empty():
		print("No spawn points found!")
		return

	var index = randi() % spawner_positions.size()
	print("indexed")
	var leaf = leaf_scene.instantiate()
	print("instantiated")

	leaf.global_position = spawner_positions[index].global_position
	print("got global pos")
	add_child(leaf)
	print("added leaf child")

func _on_timer_timeout() -> void:
	spawn()
	print("spawned")
