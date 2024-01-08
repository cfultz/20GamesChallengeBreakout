extends CharacterBody2D

class_name Ball

@export var initial_speed = 8
@export var speed_multiplier = 1.03

var ball_speed = initial_speed


func _ready():
	start_ball()
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if (collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
	
	
func start_ball():
	randomize()
	velocity.x = [-2, 2][randi() % 2] * initial_speed
	velocity.y = [1, 2][randi() % 2] * initial_speed
