extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	button_down.connect(startthegame)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	




func startthegame():
	Events.up_level.emit()
	pass
