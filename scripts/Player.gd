extends KinematicBody

var position = Vector3.ZERO
var on_floor = true
var isometric : bool = false
var front : bool = false
export var velocity : int
export var gravity : int
export var jump : int


func _ready():
	Signals.connect("isometric", self, "is_isometric")
	Signals.connect("front", self, "is_front")
	Signals.connect("fall",self,"in_fall")
	
func _process(delta):
	pass
	
func _physics_process(delta):
	position.y -= gravity * delta
	
	if front and !isometric:
		move(delta)
		position = move_and_slide(position,Vector3(0,-1,0))

	if isometric:
		stop()

func move(delta):
	if Input.is_action_pressed("ui_right"):
		position.x = velocity
		rotation_degrees.y = 90
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("ui_left"):
		position.x = -velocity
		rotation_degrees.y = 270
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("ui_down"):
		position.z = velocity
		rotation_degrees.y = 30
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("ui_up"):
		position.z = -velocity
		rotation_degrees.y = 135
		$AnimationPlayer.play("Run")
	else:
		position.x = 0
		position.z = 0
		$AnimationPlayer.play("Idle")
		
func jump(delta):
	
	if Input.is_action_just_pressed("ui_select"):
		on_floor = false
		position.y =  jump
		$AnimationPlayer.play("Jump")

	if is_on_floor():
		on_floor = true

func is_isometric():
	isometric = true
	front = false
	
func is_front():
	front = true
	isometric =  false

func stop():
		position.x = 0
		position.z = 0
		$AnimationPlayer.play("Idle")
	

func in_fall():
	Game.lose_life()
	translation.x = 0
	translation.y = 0.896
	translation.z = 0
	
