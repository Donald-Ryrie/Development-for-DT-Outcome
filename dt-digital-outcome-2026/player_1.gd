extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("P1_left", "P1_right", "P1_up", "P1_down")
	velocity = direction * 400 
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("P1_left"):
		$"Player Character".frame = 0 
	elif event.is_action_pressed("P1_right"):
		$"Player Character".frame = 1  
