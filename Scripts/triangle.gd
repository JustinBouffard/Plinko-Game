extends AnimatableBody2D

@export var distance := 200.0
@export var speed := 100.0
@export var axis := Vector2.RIGHT

var start_position
var direction := 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_position = global_position
	axis = axis.normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	global_position += axis * speed * direction * delta
	
	var traveled = (global_position - start_position).dot(axis)
	
	if traveled > distance:
		global_position = start_position + axis * distance
		direction = -1.0
	elif traveled < 0:
		global_position = start_position
		direction = 1.0
