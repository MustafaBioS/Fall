extends CanvasLayer
@onready var scorelb = $ScoreLabel

func _ready() -> void:
	scorelb.text = str(State.score)

func add_score():
	State.score += 1
	scorelb.text = str(State.score)

func add_boosted_score():
	State.score += 2
	scorelb.text = str(State.score)
