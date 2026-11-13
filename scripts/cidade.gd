extends Node3D


func _on_area_linha_de_chegada_body_entered(body: Node3D) -> void:
	if body.is_in_group("jogador"):
		print("voce venceu!")
