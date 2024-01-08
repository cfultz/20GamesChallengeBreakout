extends Node

var current_points = 0


func _ready():
	GameEvents.player_scored.connect(on_player_scored)

func increment_score(number: float):
	current_points += number
	
func on_player_scored():
	increment_score
