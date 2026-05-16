extends Node

var current_level = 1
var final_level = 4
var area_path = "res://Levels/"

func end_game():
	print("the game has finished")
	var full_path = area_path + "Title_screen.tscn"
	get_tree().change_scene_to_file(full_path)
	
func next_level():
	
	#checks for title screen
	if current_level == final_level:
		end_game()
		return
	
	current_level += 1
	
	var full_path = area_path + "level_" + str(current_level) + ".tscn"
	if !full_path:
		print("error: level file not found!")
		return
	get_tree().change_scene_to_file(full_path)
	
	print("Player is sent to next level")
