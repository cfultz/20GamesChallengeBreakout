extends Node


# Signals
signal player_scored(number: float)


func emit_player_scored(number: float):
	player_scored.emit(number)
