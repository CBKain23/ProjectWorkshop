extends Node

##The character that the gravity is gonna apply gravity to.
@export var character : CharacterBody2D


##This is the downward force applied to a character
const GRAVITY = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	#Check to see if the character variable isn't null
	if character != null:
		
		#Don't apply the gravity if the character is on the ground
		if not character.is_on_floor():
			character.velocity.y += (GRAVITY * delta)
	
