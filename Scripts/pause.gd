extends CanvasLayer
var opt = false
@onready var pause = $"../Pause"
@onready var title: Label = $Title
@onready var con: VBoxContainer = $VBoxContainer
@onready var options: Panel = $Options

func _ready() -> void:
	title.visible = true
	con.visible = true
	options.visible = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("back") and opt == false:
		State.paused = false
		pause.visible = false
		
	if Input.is_action_just_pressed("back") and opt == true:
		opt = false
		title.visible = true
		con.visible = true
		options.visible = false
		
		
func _on_play_pressed() -> void:
	State.paused = false
	pause.visible = false


func _on_options_pressed() -> void:
	opt = true
	title.visible = false
	con.visible = false
	options.visible = true

func _on_back_pressed() -> void:
	opt = false
	title.visible = true
	con.visible = true
	options.visible = false

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/shop.tscn")
