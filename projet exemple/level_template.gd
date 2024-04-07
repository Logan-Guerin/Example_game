extends Node2D


@export var level_right:PackedScene
@export var level_left:PackedScene
@export var level_up:PackedScene
@export var level_down:PackedScene
@export var level_door1:PackedScene
@export var level_door2:PackedScene
@export var level_door3:PackedScene
@export var level_door4:PackedScene



#var adjacent_levels = {'right'=n_level_right,'left'= n_level_left,'up'=n_level_up,'down'=n_level_down,'door1'=n_level_door1,'door2'=n_level_door2,'door3'=n_level_door3,'door4'=n_level_door4}




# Called when the node enters the scene tree for the first time.
func _ready():
	Events.main_menu.connect(to_main_menu)
	Events.right_level.connect(change_level_right)
	Events.left_level.connect(change_level_left)
	Events.up_level.connect(change_level_up)
	Events.down_level.connect(change_level_down)
	Events.door1.connect(change_level_door1)
	Events.door2.connect(change_level_door2)
	Events.door3.connect(change_level_door3)
	Events.door4.connect(change_level_door4)
	#get_tree().change_scene_to_packed(n_level_up)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	print(Events.main_menu.get_connections())
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
	



