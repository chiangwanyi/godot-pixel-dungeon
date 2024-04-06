class_name InputManager extends Node

var input_detection_active := true
var smooth_movement := true

var primary_movement := Vector2.ZERO
var secondary_movement := Vector2.ZERO

@export var player_id := "Player1"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if input_detection_active:
		set_movement()
	
func set_movement():
	if input_detection_active:
		if smooth_movement:
			primary_movement.x = Input.get_axis("move_left", "move_right")
			primary_movement.y = Input.get_axis("move_up", "move_down")
