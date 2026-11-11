extends Node3D

@export var intensidade: float = 8.0

func _ready() -> void:
	for pedacos : RigidBody3D in self.get_children():
		pedacos.apply_impulse(pedacos.get_child(0).position * intensidade, self.global_position)
	
	await get_tree().create_timer(5).timeout
	queue_free()
