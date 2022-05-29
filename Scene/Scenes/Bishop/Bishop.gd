extends Node2D

var move_speed = 200
var moving = false

var destination = Vector2.ZERO
var distance = 0

var color = 'white'

var selected = false


var gridposition = Vector2.ZERO

onready var PIECE = $Piece

onready var BASE_CHILD = $Base_Piece

func _ready():
	pass
	
#dont literally move bishop, only move basepiece
func _physics_process(delta):
	
	
	if Input.is_action_just_pressed("ui_accept"):
		BASE_CHILD.Move_to_Tile(5,7)
	
	if Input.is_action_just_pressed("left_mouse"):
		selected = BASE_CHILD.CheckSelected()
	#print(selected)
	if (selected):
		CheckLegalMoves()
		
	BASE_CHILD.Location()
	
	if Input.is_action_just_pressed("ui_cancel"):
		#print(BASE_CHILD.Location())
		BASE_CHILD.queryTile(BASE_CHILD.Location().x, BASE_CHILD.Location().y)

#usedatamap 
	
func CheckLegalMoves():
	print("lel")
	
	

