extends Node2D

var score = 0 
var highscore = 0 setget set_highscore
var musik_intro = load("res://assets/music/50s-bit.ogg")
var score_file = "user://highscore.data"

func _ready():
	load_score()
	
func load_score():
	var f = File.new()
	if not f.file_exists(score_file): return
	f.open(score_file, File.READ)
	highscore = f.get_var()
	f.close()
	pass
	
# call this at game end to store a new highscore
func save_score():
	var f = File.new()
	f.open(score_file, File.WRITE)
	f.store_var(highscore)
	f.close()
	pass

func set_highscore(new_value):
	highscore = new_value
	save_score()
	pass
	
func musik():
	$musik.play()

func musik_stop():
	$musik.stop()
