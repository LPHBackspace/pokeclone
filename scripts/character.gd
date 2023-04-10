extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var is_walking = false

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	if is_walking == false:
		$AnimationPlayer.stop()
	
		
	if Input.is_action_pressed("ui_right"):
		is_walking = true
		velocity.x = SPEED 
		$AnimationPlayer.play("walk_right")
		

	elif Input.is_action_pressed("ui_left"):
		is_walking = true
		velocity.x = SPEED * -1
		$AnimationPlayer.play("walk_left")
		
	elif Input.is_action_pressed("ui_down"):
		is_walking = true
		velocity.y = SPEED 
		$AnimationPlayer.play("walk_down")

	elif Input.is_action_pressed("ui_up"):
		is_walking = true
		velocity.y = SPEED * -1
		$AnimationPlayer.play("walk_up")

	else:
		is_walking = false
	

	move_and_slide()
