extends "res://guns/gunTemplate.gd"


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
	fire_rate = 9.25
	alt_fire = null
	zoom_change = 8.32
	for i in range(8):
		damages[i] = 39
	for i in range(8):
		head_damages[i] = 156
	for i in range(8):
		leg_damages[i] = 33
	zoom = 1.25
	zoom_time = "unknown"
	#need to change the zoom_net_change
	zoom_net_change = null
	price = 2900
	calc_vals()
	print("----------------------------------------------------")
	print("V A N D A L")
	print("----------------------------------------------------")
	print("rate of fire: " + str(fire_rate))
	print("ttk: " + str(ttk))
	print("ttk (light): " + str(ttk_light))
	print("ttk (heavy): " + str(ttk_heavy))
	print("alt fire: " + str(alt_fire))
	print("zoom level: " + str(zoom))
	print("zoom time: " + str(zoom_time))
	print("zoomed rate of fire: " + str(zoom_change))
	print("zoom net change: " + str(zoom_net_change))
	print("bang 4 buck: " + str(bang4buck))
	print("bang 4 buck (chest): " + str(bang4buck_chest))
	print("bang 4 buck (head): " + str(bang4buck_head))
	print("bang 4 buck (leg): " + str(bang4buck_leg))
	print("bang 4 buck (light): " + str(bang4buck_light))
	print("bang 4 buck (heavy): " + str(bang4buck_heavy))
	print("----------------------------------------------------")
	print("----------------------------------------------------")
	print(" ")
	print(" ")
	print(" ")
	print(" ")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
