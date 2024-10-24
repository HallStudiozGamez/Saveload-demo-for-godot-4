extends Node2D
var highscore = 0
var number = 0
var SAVE_DATA = ("user://savefiles/testdata"+str(Data.slot)+".dat")
func _ready() -> void:
	load_highscore()
func reset_highscore():
	highscore = 0
	number = 0
	var file = FileAccess.open(SAVE_DATA, FileAccess.WRITE)
	if file.file_exists(SAVE_DATA):
		DirAccess.remove_absolute(SAVE_DATA)
		
		load_highscore()
		
func new_highscore():
	var file = FileAccess.open(SAVE_DATA, FileAccess.WRITE)
	file.store_string(str(highscore))
	file.close()
func load_highscore() -> void:
	if FileAccess.file_exists(SAVE_DATA):
		var file = FileAccess.open(SAVE_DATA, FileAccess.READ)
		highscore = file.get_as_text(true).to_int()
		file.close()
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		reset_highscore()
	if number >= highscore:
		highscore = number
		new_highscore()
	$Label.text = "highscore: "+str(highscore)
	$Label2.text = "score: "+str(number)
func _on_button_pressed():
	number += 1
func _on_button_2_pressed():
	number = 0


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://savefiles.tscn")
