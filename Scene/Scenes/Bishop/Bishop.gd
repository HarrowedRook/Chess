extends Node2D

var move_speed = 200
var moving = false

var destination = Vector2.ZERO
var distance = 0

var color = 'white'

var selected = false


var gridposition = Vector2.ZERO

onready var PIECE = $Piece

var myLocation

onready var BASE_CHILD = $Base_Piece

func _ready():
	pass
	
#dont literally move bishop, only move basepiece
func _physics_process(delta):
	
	if Input.is_action_just_pressed("left_mouse"):
		selected = BASE_CHILD.CheckSelected()
	#print(selected)
	if (selected):
		CheckLegalMoves()

#usedatamap 
	
func CheckLegalMoves():
	print("lel")
	
	
func MyLocation():
	gridposition.x = ((position.x - 8)/16)
	gridposition.y = ((position.y - 8)/16)
	
	print("x" + gridposition.x)
	print("y" + gridposition.y)
