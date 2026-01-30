extends Node2D

@export  var ball_start_pos := Vector2(397.0, 81.0)

var score := 0

func _on_plus_point_body_entered(body: Node2D) -> void:
	score += 3
	$ScoreLabel.text = "Score: " + str(score)
	_place_ball_start()

func _on_minus_one_point_body_entered(body: Node2D) -> void:
	if score > 0:
		score -= 1
	$ScoreLabel.text = "Score: " + str(score)
	_place_ball_start()

func _place_ball_start() -> void:
	$Ball.set_deferred("global_position", ball_start_pos)
	$Ball.set_deferred("freeze", true)
	$Ball.get_node("ArrowPoint").visible = true
