extends Node2D

var score := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(score)

func _on_plus_point_body_entered(body: Node2D) -> void:
	print("getting points")
	score += 3

func _on_minus_one_point_body_entered(body: Node2D) -> void:
	print("removing points")
	score -= 1
