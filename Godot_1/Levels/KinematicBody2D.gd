extends KinematicBody2D

var speed = 100
var velocity = Vector2()
var state: int = 0
var rng = 0




func _process(delta):

	state = rand_range(0, 4)
	print(state)

	if state == 0:
		pass
#Right
	elif state == 1:
		velocity.x = speed
	
#Left
	elif state == 2:
		velocity.x = -speed
	
#Forward
	elif state == 3:
		velocity.y = speed
	
#Back
	elif state == 4:
		velocity.y = -speed
	
