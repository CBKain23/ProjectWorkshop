extends Node

@export var character : CharacterBody2D

var movement_speed : float = 50.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func movement():
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction:
		character.velocity.x = direction * movement_speed
	else:
		character.velocity.x = move_toward(character.velocity.x, 0,  500.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	movement()
