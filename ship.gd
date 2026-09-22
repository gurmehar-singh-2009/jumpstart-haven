extends Node

@export var value: int = 1

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is Player:
		GameController.ship_destroyed(value)
		self.queue_free()
