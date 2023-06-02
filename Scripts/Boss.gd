extends enemyBase

signal BossDead

func _ready():
	set_physics_process(false)

func _physics_process(delta):
	apply_gravity(delta)
	_set_boss_animation()

func _set_boss_animation():
	var anim = "bossRun"

	if $ray_wall.is_colliding():
		anim = "idle"
	elif motion.x != 0 and health > 3:
		anim = "bossRun"
	elif motion.x != 0 and health < 3:
		anim = "angryRun"
		speed = 128
		
	if hitted == true:
		anim = "hit"
	
	if health < 1:
		anim = "bossDie"
		emit_signal("BossDead")
		
	if $anim.assigned_animation != anim:
		$anim.play(anim)

func _on_Trigger_PlayerEntered():
	set_physics_process(true)
