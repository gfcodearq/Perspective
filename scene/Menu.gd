extends Control

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://scene/World.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://scene/Controles.tscn")
