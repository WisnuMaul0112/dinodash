extends Control

func _ready():
	if Global.score > Global.highscore:
		Global.highscore = Global.score
	$highscore.text = "highscore:" + str(Global.highscore)
	
