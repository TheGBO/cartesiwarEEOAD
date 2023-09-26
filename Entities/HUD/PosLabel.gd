extends Label

@onready var xSlider = $"../XSlider"
@onready var ySlider = $"../YSlider"
@onready var spr = $"../Sprite2D"

func _process(delta):
	text = "X:" + str(CoordToPlane(xSlider.value, 800)) + "\nY:" + str(-CoordToPlane(ySlider.value, 600))
	spr.global_position = Vector2(xSlider.value, ySlider.value)
func CoordToPlane(value, magnitude):
	return (value-magnitude/2)/100
