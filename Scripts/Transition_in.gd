extends CanvasLayer

func change_scene(path, _delay = 0.05):
	$transition_fx.interpolate_property($overlay, "progress", 0.0, 1.0, 2.0, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$transition_fx.start()
	yield($transition_fx, "tween_completed")
	assert(get_tree().change_scene(path) == OK)
