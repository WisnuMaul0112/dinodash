extends Sprite

func _process(delta):
	position.x -=50 * delta

func _on_Timer_timeout():
	position.x = 1820.611

