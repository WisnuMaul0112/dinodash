extends KinematicBody2D

const gravitasi = 12
const kecepatan = 200
const kekuatan_lompat = -400
var velocity = Vector2.ZERO

signal game_selesai

func _physics_process(delta):
	velocity.y += gravitasi
	if Input.is_action_just_pressed("atas") && is_on_floor():
		velocity.y = kekuatan_lompat
		$lompat.play()
	
	elif Input.is_action_pressed("bawah") && is_on_floor():
		$AnimationPlayer.play("nunduk")
	
	elif Input.is_action_just_pressed("bawah"):
		velocity.y += 400
	
	elif Input.is_action_pressed("kanan"):
		velocity.x += kecepatan * 3 * delta
		$AnimationPlayer.play("jalan")
		
	elif Input.is_action_pressed("kiri"):
		velocity.x -= kecepatan *3 * delta
		$AnimationPlayer.play("jalan")
		
	else:
		velocity.x =0
		$AnimationPlayer.play("jalan")
		
	move_and_slide(velocity, Vector2.UP)

func control(delta):
	position.x = clamp(position.x, $Camera2D.limit_left, $Camera2D.limit_right)
	
func game_selesai():
	get_tree().paused = true 
	emit_signal("game_selesai")
	Global.save_score()
