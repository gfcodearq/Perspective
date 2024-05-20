extends Control

func _ready():
	Game.lives = 3

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scene/World.tscn")
