extends Node2D

var points = 000
var lives = 3
var level = 1

@onready var paddle = $Paddle
@onready var ball = $Ball as Ball
@onready var ui = $Ui as UI


# Called when the node enters the scene tree for the first time.
func _on_player_scored():
	points += 1
	ui.update_points(points)
	
func _on_player_death():
	lives -= 1
	ui.update_lives(lives)
	if lives == 0:
		get_tree().quit()
	else:
		reset_game_state()
	
func _on_level_up():
	lives += 1
	ui.update_level(level)
	
func reset_game_state():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
