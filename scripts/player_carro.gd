extends VehicleBody3D

var steer = 0.7
var power = 800

func _physics_process(delta: float) -> void:
	steering = move_toward(steering, Input.get_axis("direita", "esquerda") * steer, delta * 10)
	engine_force = Input.get_axis("reh", "acelerar") * power
