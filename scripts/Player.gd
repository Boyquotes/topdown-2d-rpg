extends KinematicBody2D

var velocity: Vector2
export(int) var speed

func _physics_process(_delta):
	move()
	

func move():
	
	var direction_vector: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	velocity = direction_vector * speed
	
	velocity = move_and_slide(velocity)
