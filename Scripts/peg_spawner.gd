extends Node2D

@export var peg_scene: PackedScene

@export var rows = 8
@export var pegs_per_row = 11.0
@export var x_spacing = 53.0
@export var y_spacing = 50.0
@export var row_offset = 25.5

func _ready() -> void:
	for row in range(rows):
		for col in range(pegs_per_row):
			var peg = peg_scene.instantiate()
			add_child(peg)
			var offset = (row % 2) * row_offset
			peg.position = Vector2(col * x_spacing + offset, row * y_spacing)
		
