extends CanvasLayer


func _ready():
	load_hearts()
	Game.hud = self

func load_hearts():
	$heart_full.rect_size.x = Game.lives * 481
	$heart_empty.rect_size.x = (Game.max_lives - Game.lives) * 481
	$heart_empty.rect_position.x = $heart_full.rect_position.x + $heart_full.rect_size.x * $heart_full.rect_scale.x
