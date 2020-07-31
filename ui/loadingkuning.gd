extends Node2D
onready var bar = $ProgressBar

func _ready():
	bar.value = 0 
	Global.musik_stop()
	
func _process(delta):
	bar.value += 0.5
	if bar.value == 100:
		get_tree().change_scene("res://level/levelkuning.tscn")
		
	
