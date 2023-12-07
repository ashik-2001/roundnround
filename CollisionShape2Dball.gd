extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var radius = 125 # Radius of the circle

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var angle = randf_range(0, 2*PI)
		var r = randf_range(100, radius)
		var x = r * cos(angle)
		var y = r * sin(angle)
		position = Vector2(x, y)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
