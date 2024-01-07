extends RigidBody2D

@export var speed = 500

func _physics_process(delta):
	var movement = Vector2.ZERO
	if Input.is_action_pressed("left"):
		movement = Vector2.LEFT
	elif Input.is_action_pressed("right"):
		movement = Vector2.RIGHT
		
	linear_velocity = movement * speed
