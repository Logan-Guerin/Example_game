extends Node2D

@onready var collision_polygon_2d = $"terrain de test/CollisionPolygon2D"
@onready var polygon_2d = $"terrain de test/CollisionPolygon2D/Polygon2D"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
@onready var c_m_plateform = $"moving plateform/C_m_plateform"
@onready var s_m_plateform = $"moving plateform/C_m_plateform/S_m_plateform"

var gravity_center_position = Vector2(300,180)

# Called when the node enters the scene tree for the first time.
func _ready():
	polygon_2d.polygon = collision_polygon_2d.polygon
	s_m_plateform.polygon = c_m_plateform.polygon



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass













