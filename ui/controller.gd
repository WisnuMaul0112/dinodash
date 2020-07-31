extends Control


func _on_lompat_pressed():
	Input.is_action_just_pressed("atas")


func _on_bawah_pressed():
	Input.is_action_pressed("bawah")


func _on_kiri_pressed():
	Input.is_action_pressed("kiri")


func _on_kanan_pressed():
	Input.is_action_pressed("kanan")
