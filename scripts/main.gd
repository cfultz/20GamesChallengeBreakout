extends Node2D

# Initial starting variables for points, lives, and level
var points = 000
var lives = 3
var level = 1

# Setting up all the things
@onready var paddle = $Paddle
@onready var ball = $Ball as Ball
@onready var ui = $Ui as UI
@onready var block = $Block


# Point scored
func _on_player_scored():
	points = GameEvents.player_scored
	ui.update_points(points)

# Player Death function
func _on_player_death():
	lives -= 1
	ui.update_lives(lives)
	if lives == 0:
		get_tree().quit()
	else:
		await get_tree().create_timer(1.0).timeout
		reset_game_state()
		
# Leveling Up function
func _on_level_up():
	level += 1
	ui.update_level(level)
	
# After level finish or death, reset game back to starting state for next round
func reset_game_state():
	paddle.global_position.x = 170
	ball.global_position.x = 180
	ball.global_position.y = 425
	ball.velocity = Vector2.ZERO
	paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
