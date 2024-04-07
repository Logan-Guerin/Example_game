extends Area2D

@onready var player = $"../../player"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var force = 100
var direction = Vector2(1,0)




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#if direction.dot(player.velocity)<force:
		#player.add_force(direction*delta*max(1,min(force,force-direction.dot(player.velocity))))
	
	
	#player.add_force(direction*delta*max(10,min(force,force-direction.dot(player.velocity))))
	pass

#player.can_translate_messages()



