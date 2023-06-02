extends Control


func _ready():
	$exitBtn.grab_focus()


func _on_exitBtn_pressed():
	queue_free()
	Global.controllOff = false
