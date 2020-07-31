extends Area2D

func _ready():
	$AnimationPlayer.play("terbang")
	
func _process(delta):
	if Global.score > 50 :
		position.x -= 250*2*delta
	elif Global.score > 100 :
		position.x -= 280*2*delta
	else:
		position.x -= 200 * 2* delta
		
func _on_burung_body_entered(body):
	body.game_selesai()
	
