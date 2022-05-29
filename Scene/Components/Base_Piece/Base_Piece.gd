extends Node2D

var move_speed = 200
var moving = false

var destination = Vector2.ZERO
var distance = 0

var color = 'white'

var selected = false

onready var PIECE = $Piece

var myLocation

func _ready():
	Move_to_Tile(1,1)
	


func _physics_process(delta):
	
	
	
	#if Input.is_action_just_pressed("left_mouse") and selected:
	#	CheckLegalMoves()
		
	
	
	if moving:
		position = position.move_toward(destination, delta*move_speed)
	if position == destination:
		moving = false

func Move_to_Tile(x, y):
	destination = Vector2((x*16)+8, (y*16)+8)
	distance = position - destination
	moving = true
	
func CheckSelected():
	if (selected):
		print("lol")
	return selected
	
func MyLocation():
	print("x" + String((position.x - 8)/16))
	print("y" + String((position.y - 8)/16))


func _on_Area2D_mouse_entered():
	selected = true


func _on_Area2D_mouse_exited():
	selected = false
