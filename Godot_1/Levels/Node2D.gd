extends Node2D

var moving = false
var speed = 7

func _ready():
	var sprite1 = get_node("Sprite1")
	var sprite2 = get_node("Sprite2")
	var label = get_node("Label")
	var start_button = get_node("StartButton")
	var stop_button = get_node("StopButton")

	start_button.connect("pressed", self, "start_moving")
	stop_button.connect("pressed", self, "stop_moving")

func start_moving():
	moving = true

func stop_moving():
	moving = false

func _process(delta):
	if moving:
		var sprite1 = get_node("Sprite1")
		var sprite2 = get_node("Sprite2")
		sprite1.position += Vector2(randi() % 3 - 1, randi() % 3 - 1) * speed
		sprite2.position += Vector2(randi() % 3 - 1, randi() % 3 - 1) * speed
		
		if sprite1.position.distance_to(sprite2.position) < 40:
			var label = get_node("Label")
			label.text = "Boom!"
			moving = false
