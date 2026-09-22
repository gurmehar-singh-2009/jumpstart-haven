extends Node

var total_ships: int = 0

func ship_destroyed(value: int):
	total_ships += value
	EventController.emit_signal("ship_destroyed", total_ships)
