extends Node2D

var move_speed = 200
var moving = false

var destination = Vector2.ZERO
var distance = 0

onready var PIECE = $Piece

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Move_to_Tile(7,7)
	
	if moving:
		position = position.move_toward(destination, delta*move_speed)
	if position == destination:
		moving = false

func Move_to_Tile(x, y):
	destination = Vector2((x*16)+8, (y*16)+8)
	distance = position - destination
	moving = true
