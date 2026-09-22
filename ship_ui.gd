extends Control

@onready var label = $Label

func _ready():
	EventController.connect("ship_destroyed", on_event_ship_destroyed)

func on_event_ship_destroyed(value: int) -> void:
	label.text = str(value)
