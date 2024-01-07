extends CharacterBody2D

class_name Ball

@export var initial_speed = 10
@export var speed_multiplier = 1.05

var ball_speed = initial_speed


func _ready():
	start_ball()
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if (collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
	
	
func start_ball():
	randomize()
	velocity.x = [1, 2][randi() % 2] * initial_speed
	velocity.y = [1, 2][randi() % 2] * initial_speed
