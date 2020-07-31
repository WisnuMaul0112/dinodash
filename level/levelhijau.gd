extends Node2D

const batu1 = preload("res://rintangan/rintangan_batu1.tscn")
const obstacle = preload("res://rintangan/rintangan.tscn")
const burung = preload("res://rintangan/burung.tscn")
const burung2 = preload("res://rintangan/burungbawah.tscn")
const rumput1 = preload("res://ui/rumput.tscn")


func _ready():
	Global.score = 0
	$player.hide()
	$audio/backsound.play()
	Global.musik_stop()
	
func _on_Timer_timeout():
	var rintangan_1 = obstacle.instance()
	add_child(rintangan_1)

func _on_Update_Score_timeout():
	Global.score += 1

func _process(delta):
	$score.text = "score: " + str(Global.score)

func _on_Timer_batu_timeout():
	var rintangan_2 = batu1.instance()
	add_child(rintangan_2)

func _on_rumput_timeout():
	var rumput = rumput1.instance()
	add_child(rumput)

func _on_burung_timeout():
	var burung_terbang = burung.instance()
	add_child(burung_terbang)

func _on_burung_bawah_timeout():
	var burung_bawah = burung2.instance()
	add_child(burung_bawah)

func _on_playerhijau_game_selesai():
	$"game over scene".show()
	$audio/lose.play()
