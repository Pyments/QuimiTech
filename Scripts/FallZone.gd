extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
		
func _on_body_entered(_body):
	get_tree().reload_current_scene()		