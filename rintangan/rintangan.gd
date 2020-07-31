extends Area2D

func _process(delta):
	if Global.score > 50 :
		position.x-= 260 *2*delta
	elif Global.score > 100:
		position.x -= 280 *2 * delta
	elif Global.score > 150:
		position.x -= 310 *2 * delta
	elif Global.score > 200:
		position.x -= 330 *2 * delta
	elif Global.score > 250:
		position.x -= 350 *2 * delta
	elif Global.score > 300:
		position.x -= 370 *2 * delta
	else:
		position.x -= 240 * 2* delta
		
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_rintangan_body_entered(body):
	body.game_selesai()

