extends Node3D

@export var cone_quebrado : PackedScene

func _on_rigid_body_3d_body_entered(body: Node) -> void:
	if body.is_in_group("jogador"):
		var cone_quebrado_model : Node3D = cone_quebrado.instantiate()
		
		get_parent().add_child(cone_quebrado_model)
		cone_quebrado_model.transform = self.global_transform
		
		queue_free()
