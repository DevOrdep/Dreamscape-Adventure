extends Control


func _ready():
	$controls/startBtn.grab_focus()
	Global.player_health = 3
	Global.player_life = 3
	Global.checkpoint_pos = null

func _physics_process(_delta):
	if !Global.controllOff:
		$controls/startBtn.grab_focus()
		Global.controllOff = true

func _on_startBtn_pressed():
	get_tree().change_scene("res://Levels/Level_01.tscn")
	


func _on_controlsBtn_pressed():
	var controlScreen = load("res://Scenes/controlsScreen.tscn").instance()
	get_tree().current_scene.add_child(controlScreen)


func _on_quitBtn_pressed():
	get_tree().quit()
