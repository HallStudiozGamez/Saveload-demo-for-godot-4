extends Node2D


var SAVE_DATA_1 = ("user://savefiles/testdata1.dat")
var SAVE_DATA_2 = ("user://savefiles/testdata2.dat")
var SAVE_DATA_3 = ("user://savefiles/testdata3.dat")

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://savefiles.tscn")


func _on_button_pressed():
	var file = FileAccess.open(SAVE_DATA_1, FileAccess.WRITE)
	if file.file_exists(SAVE_DATA_1):
		DirAccess.remove_absolute(SAVE_DATA_1)


func _on_button_2_pressed():
	var file = FileAccess.open(SAVE_DATA_2, FileAccess.WRITE)
	if file.file_exists(SAVE_DATA_2):
		DirAccess.remove_absolute(SAVE_DATA_2)


func _on_button_3_pressed():
	var file = FileAccess.open(SAVE_DATA_3, FileAccess.WRITE)
	if file.file_exists(SAVE_DATA_3):
		DirAccess.remove_absolute(SAVE_DATA_3)
