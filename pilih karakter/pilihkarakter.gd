extends Node2D

func _ready():
	$jojo2/AnimationPlayer.play("kikolari")
	$kiko2/AnimationPlayer.play("kikolari")
	$piko2/AnimationPlayer.play("kikolari")
	$toto2/AnimationPlayer.play("kikolari")

func _on_kiko3_released():
	get_tree().change_scene("res://ui/loading.tscn")
	$pilih.play()
func _on_piko3_released():
	get_tree().change_scene("res://ui/loadingkuning.tscn")
	$pilih.play()
func _on_jojo3_released():
	get_tree().change_scene("res://ui/loadingmerah.tscn")
	$pilih.play()
func _on_toto3_released():
	get_tree().change_scene("res://ui/loadingijo.tscn")
	$pilih.play()


func _on_kiko3_pressed():
	$pilih.play()


func _on_piko3_pressed():
	$pilih.play()


func _on_jojo3_pressed():
	$pilih.play()


func _on_toto3_pressed():
	$pilih.play()
