extends CanvasLayer

var keys = 0

func _ready():
	Signals.connect("key",self,"update_key")
	

func _process(delta):
	$text.text = "x " + String(keys)


func update_key():
	keys += 1
