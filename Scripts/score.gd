extends CanvasLayer
@onready var scorelb = $ScoreLabel

func add_score():
	State.score += 1
	scorelb.text = str(State.score)
