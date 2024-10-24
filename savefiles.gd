extends Node2D

var SAVE_DATA_1 = ("user://savefiles/testdata1.dat")
var SAVE_DATA_2 = ("user://savefiles/testdata2.dat")
var SAVE_DATA_3 = ("user://savefiles/testdata3.dat")

func _process(_delta):
	#if FileAccess.open(SAVE_DATA_1, FileAccess.WRITE).file_exists(SAVE_DATA_1):
		#$VBoxContainer/Button1.text = "Slot 1"
	#else:
		#$VBoxContainer/Button1.text = "New File"
	#if FileAccess.open(SAVE_DATA_2, FileAccess.WRITE).file_exists(SAVE_DATA_2):
		#$VBoxContainer/Button2.text = "Slot 2"
	#else:
		#$VBoxContainer/Button2.text = "New File"
	#if FileAccess.open(SAVE_DATA_3, FileAccess.WRITE).file_exists(SAVE_DATA_3):
		#$VBoxContainer/Button3.text = "Slot 3"
	#else:
		#$VBoxContainer/Button3.text = "New File"
	pass
func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://deletefiles.tscn")


func _on_button_pressed():
	Data.slot = 1
	get_tree().change_scene_to_file("res://node_2d.tscn")

func _on_button_2_pressed():
	Data.slot = 2
	get_tree().change_scene_to_file("res://node_2d.tscn")

func _on_button_3_pressed():
	Data.slot = 3
	get_tree().change_scene_to_file("res://node_2d.tscn")
