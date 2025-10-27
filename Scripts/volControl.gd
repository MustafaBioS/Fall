extends HSlider
@export var audioBus: String
var busID = null

func _ready():
	busID = AudioServer.get_bus_index(audioBus)

func _on_value_changed(value: float) -> void:
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(busID, db)
