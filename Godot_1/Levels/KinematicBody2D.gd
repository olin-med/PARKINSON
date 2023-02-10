extends KinematicBody2D

var poschange


func _process(delta):

	poschange = rand_range(0, 1)
	print(poschange)

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
	
