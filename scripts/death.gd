extends Area2D

signal  death

func _on_body_entered(body):
	if body is Ball:
		death.emit()
		print("Death")
