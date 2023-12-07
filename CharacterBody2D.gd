extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var i = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			i = i * -1


func _process(delta):
	rotation += 2 * i * delta
	pass


func _on_rod_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.score += 1
	pass # Replace with function body.
