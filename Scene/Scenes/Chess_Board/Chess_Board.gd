extends Node2D

var map = []
var data_map = []

const Tile_Scene = preload("res://Scene/Components/Base_Tile/Base_Tile.tscn")

func _ready():
	_generate_map()

func _generate_map():
	for y in 8:
		var temp = []
		var data_map_temp = []
		for x in 8:#
			var tile = Tile_Scene.instance()
			if y % 2 == 0 && x % 2 == 1 || y % 2 == 1 && x % 2 == 0:
				tile.modulate = Color("252e54")
			tile.position.x = (x * 16) + 8
			tile.position.y = (y * 16) + 8
			add_child(tile)
			temp.append(tile)
			data_map_temp.append([0,0])
		map.append(temp)
		data_map.append(data_map_temp)

func Get_Tile(x, y):
	return(map[y][x])

func Get_Tile_Position(x, y):
	return(map[y][x].global_position)
