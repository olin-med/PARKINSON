extends KinematicBody2D

var speed = 300
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
		move_and_slide(velocity)
	
#Left
	elif state == 2:
		velocity.x = -speed
		move_and_slide(velocity)
	
#Forward
	elif state == 3:
		velocity.y = speed
		move_and_slide(velocity)
	
#Back
	elif state == 4:
		velocity.y = -speed
		move_and_slide(velocity)
	
