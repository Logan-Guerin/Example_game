extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.up_level.connect(start)
	print(Events.up_level.is_connected(start))
	pass # Replace with function body.



func start():
	get_tree().change_scene_to_file("res://semicircle_world.tscn")
