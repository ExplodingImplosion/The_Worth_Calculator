extends "res://guns/gunTemplate.gd"


#var gun_name
#var fire_rate
#var ttk
#var ttk_light
#var ttk_heavy
#var alt_fire
#var zoom
#var zoom_time
#var zoom_change
#var zoom_net_change


# Called when the node enters the scene tree for the first time.
func _ready():
	fire_rate = 6.5
	alt_fire = null
	zoom_change = 6.5
	for i in range(8):
		damages[i] = 65
	for i in range(8):
		head_damages[i] = 195
	for i in range(8):
		leg_damages[i] = 49
	calc_ttk()
	zoom = 1.5
	zoom_time = "unknown"
	#need to change the zoom_net_change
	zoom_net_change = null
	price = 2700


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
