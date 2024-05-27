extends Area2D

var inside = false

func _ready():
	$AnimatedSprite2D.modulate.a = 0

func _process(_delta):
	if Input.is_action_just_pressed("ui_up") and inside == true:
		if Globais.cobre >= 1 and Globais.prata >=1  and Globais.zinco>= 1:
			Globais.prata -= 1
			Globais.zinco -= 1
			Globais.cobre -=1
			Globais.solido = 1
			print("Solido =", Globais.solido)

func _on_body_entered(_body):
	inside = true
	$AnimatedSprite2D.modulate.a += 1 

func _on_body_exited(_body):
	inside = false
	$AnimatedSprite2D.modulate.a = 0
