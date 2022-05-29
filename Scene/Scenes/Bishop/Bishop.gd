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

var flag = false

func _ready():
	pass
	
#dont literally move bishop, only move basepiece
func _physics_process(delta):
	
	
	if Input.is_action_just_pressed("ui_accept"):
		BASE_CHILD.Move_to_Tile(3,4)
	
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
#	print("lel")
	#Global.MAP_GRID.data_map[y][x][0]
	
	#check up and left
	var checkedPosition = BASE_CHILD.Location()

	if (flag == false):
		print("valid positions left and up")
		while checkedPosition.x > 0 and checkedPosition.y > 0: #checks up and left
		#	count += 1
			checkedPosition += Vector2(-1, -1)
			print(String(checkedPosition) + " is valid")
			
			
	checkedPosition = BASE_CHILD.Location()
	if (flag == false):
		print("valid positions right and down")
		while checkedPosition.x < 7 and checkedPosition.y < 7: 
		#	count += 1
			checkedPosition += Vector2(1, 1)
			print(String(checkedPosition) + " is valid")
			
	
	checkedPosition = BASE_CHILD.Location()
	if (flag == false):
		print("valid positions right and up")
		while checkedPosition.x < 7 and checkedPosition.y > 0:
		#	count += 1
			checkedPosition += Vector2(1, -1)
			print(String(checkedPosition) + " is valid")
			
	checkedPosition = BASE_CHILD.Location()
	if (flag == false):
		print("valid positions left and down")
		while checkedPosition.x > 0 and checkedPosition.y < 7:
		#	count += 1
			checkedPosition += Vector2(-1, 1)
			print(String(checkedPosition) + " is valid")	
			
			
	flag = true
		

