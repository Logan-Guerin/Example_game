extends StaticBody2D

var is_active = true
var beltspeed=1.5
var c_belt = false
var hspeed = 0
var max_hspeed = 20
var vspeed = 0
var max_vspeed = 20
var theta = 0
var speed = Vector2(hspeed,vspeed)
var origin = Vector2(200,100)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_active:
		conveyor_belt()
		position+=speed*delta
		accel(delta)
		if position.x>2000:
			position.x = 125
	


func accel(delta):
	# redo, doesn't work properly for circles, and doesn't work properly in most cases actually.
	#theta+=delta
	theta+=0.1
	speed -= Vector2(1,0)*delta*max_hspeed*sin(-theta) +Vector2(0,1)*delta*max_vspeed*cos(theta)
	if speed.x <-19:
		print(position)


func conveyor_belt():
	if c_belt:
		constant_angular_velocity=beltspeed
