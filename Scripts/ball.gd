extends RigidBody2D

@export var throw_force = 800.0

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation -= deg_to_rad(90)
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT and freeze == true:
			var direction = (get_global_mouse_position() - global_position).normalized()
			freeze = false
			$ArrowPoint.visible = false
			apply_impulse(direction * throw_force)
