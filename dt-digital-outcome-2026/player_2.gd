extends CharacterBody2D


func _physics_process(delta):
	var direction = Input.get_vector("P2_left", "P2_right", "P2_up", "P2_down")
	velocity = direction * 400 
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("P2_left"):
		$"Player 2".frame = 0 
	elif event.is_action_pressed("P2_right"):
		$"Player 2".frame = 1  
