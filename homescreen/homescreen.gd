extends Node2D

func _ready():
	$AnimationPlayer.play("dinoberdiri")
	$Control/creditscene.hide()
	Global.musik()
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://level/levelmerah.tscn")

func _on_play2_released():
	get_tree().change_scene("res://pilih karakter/karakter.tscn")


func _on_exit_released():
	get_tree().quit()


func _on_credit_released():
	$Control/creditscene.show()

func _on_silang_pressed():
	$Control/creditscene.hide()


func _on_play2_pressed():
	$audio/pilih.play()

func _on_credit_pressed():
	$audio/pilih.play()
