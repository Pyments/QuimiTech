extends Area2D

func _on_body_entered(body):
	if body.name == 'Player':
		$PortalFx.play()
		if get_tree().current_scene == $"../../Level1":
			TransicaoDeCena.cena_transicao("res://Fases/fase_2.tscn")
		elif get_tree().current_scene == $"../../Fase_2":
			TransicaoDeCena.cena_transicao("res://Fases/fase_3.tscn")
		elif get_tree().current_scene == $"../../fase-3":
			TransicaoDeCena.cena_transicao("res://Menus/MenuPrincipal/Creditos.tscn")