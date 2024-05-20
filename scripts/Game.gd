extends Node

var in_castle : bool = false
var with_key : bool = false
var max_lives = 3
var lives = max_lives
var hud


func _ready():
	Signals.connect("castle",self,"in_castle")
	Signals.connect("key",self,"with_key")

func _process(delta):
	win()
	game_over()
	next_level()

func game_over():
	if lives <= 0:
		get_tree().change_scene("res://scene/Lose.tscn")
	
func win():
	if in_castle and with_key:
		get_tree().change_scene("res://scene/Win.tscn")
		print("you win")
	
func next_level():
	pass

func in_castle():
	in_castle = true
	print("Castillo")
	
func with_key():
	with_key = true

func lose_life():
	lives -= 1
	hud.load_hearts()
	print(lives)
