extends Node2D

@onready var collision_polygon_2d = $murs/circle/CollisionPolygon2D
@onready var polygon_2d = $murs/circle/CollisionPolygon2D/Polygon2D
@onready var center_of_gravity = $center_of_gravity
@onready var player = $player
@onready var c_gravity_area = $"zones forces mvt/c_gravity_area"


@export var level_right:PackedScene
@export var level_left:PackedScene
@export var level_up:PackedScene
@export var level_down:PackedScene
@export var level_door1:PackedScene
@export var level_door2:PackedScene
@export var level_door3:PackedScene
@export var level_door4:PackedScene



var gravity_center_position = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	polygon_2d.polygon = collision_polygon_2d.polygon
	gravity_center_position = Vector2(center_of_gravity.position.x,center_of_gravity.position.y)
	
	c_gravity_area.body_entered.connect(area_gravity_changer_entered)
	c_gravity_area.body_exited.connect(area_gravity_changer_exited)
	Events.main_menu.connect(to_main_menu)
	Events.right_level.connect(change_level_right)
	Events.left_level.connect(change_level_left)
	Events.up_level.connect(change_level_up)
	Events.down_level.connect(change_level_down)
	Events.door1.connect(change_level_door1)
	Events.door2.connect(change_level_door2)
	Events.door3.connect(change_level_door3)
	Events.door4.connect(change_level_door4)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	player.position.x+=1

func area_gravity_changer_entered(body2d):
	if body2d == player:
		player.gravity_point = c_gravity_area.gravity_point_center
		player.gravity =  c_gravity_area.gravity
	pass

func area_gravity_changer_exited(body2d):
	if body2d == player:
		player.gravity_point = null
	pass


func to_main_menu():
	print('main')
	get_tree().change_scene_to_file("res://main_menu.tscn")

func change_level_right():
	if not level_right is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_right)

func change_level_left():
	if not level_left is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_left)

func change_level_up():
	if not level_up is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_up)


func change_level_down():
	if not level_down is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_down)


func change_level_door1():
	if not level_door1 is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_door1)


func change_level_door2():
	if not level_door2 is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_door2)


func change_level_door3():
	if not level_door3 is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_door3)


func change_level_door4():
	if not level_door4 is PackedScene:
		# display 'not finished yet'
		return
	get_tree().change_scene_to_packed(level_door4)
