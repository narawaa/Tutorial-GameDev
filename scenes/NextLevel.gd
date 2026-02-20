extends Node2D

@onready var ship = $GreenShip

func _process(delta):
	if ship.position.y > 1000:
		get_tree().reload_current_scene()
