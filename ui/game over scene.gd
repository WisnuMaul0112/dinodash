extends VBoxContainer

func _on_exit_released():
	get_tree().paused = false
	get_tree().change_scene("res://homescreen/homescreen.tscn")

func _on_retry_released():
	get_tree().paused = false
	get_tree().reload_current_scene()
