extends CharacterBody2D

const SPEED = 150.0
const JUMP_VELOCITY = -400.0
@onready var pause = $"../Pause"

func player():
	pass

func _ready():
	pause.visible = false
	print("Unpaused")

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction and State.paused == false:
		velocity.x = direction * SPEED
		move_and_slide()
	else:
		if State.paused == false:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			move_and_slide()
	

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if State.paused == false:
			State.paused = true
			pause.visible = true
			print("Paused")
		elif State.paused == true:
			State.paused = false
			pause.visible = false
			print("Unpaused")
