extends Spatial

var keys = 0

func _ready():
	$frontal_camera.current = true
	Signals.emit_signal("front")

	
func _process(delta):
	changeCamera()

func changeCamera():
	if Input.is_action_pressed("camara_isometrica"):
		print("isometric")
		$text_key.visible = false
		$hearts.visible = false
		$frontal_camera.current = false 
		Signals.emit_signal("isometric")
		$isometric_camera.current = true
	
	if Input.is_action_just_released("camara_isometrica"):
		$text_key.visible = true
		$hearts.visible = true
		$frontal_camera.current = true
		Signals.emit_signal("front")
		$isometric_camera.current = false



