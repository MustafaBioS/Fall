extends CanvasLayer
@onready var pause = $"../Pause"

func _on_play_pressed() -> void:
	State.paused = false
	pause.visible = false


func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/shop.tscn")
