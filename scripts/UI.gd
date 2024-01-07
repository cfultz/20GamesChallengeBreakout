extends CanvasLayer

class_name UI

@onready var Points = $MarginContainer/Points
@onready var Lives = $MarginContainer/Lives
@onready var Level = $MarginContainer/Level

func _ready():
	Points.text = "%d" % 0
	Lives.text = "%d" % 3
	Level.text = "%d" % 1

func update_points(points: int):
	Points.text = "%d" % points
	
func update_lives(lives: int):
	Lives.text = "%d" % lives
	
func update_level(level: int):
	Level.text = "%d" % level
