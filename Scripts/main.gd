extends Control
@onready var btns = $MainButtons
@onready var options = $Options
@onready var title = $Label

func _ready() -> void:
	title.visible = true
	btns.visible = true
	options.visible = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("back"):
		title.visible = true
		btns.visible = true
		options.visible = false

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_options_pressed() -> void:
	btns.visible = false
	title.visible = false
	options.visible = true

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_back_pressed() -> void:
	title.visible = true
	btns.visible = true
	options.visible = false
