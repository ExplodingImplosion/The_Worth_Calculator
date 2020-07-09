extends "res://guns/gunTemplate.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#[0, 8, 9, 10, 15, 20, 30, 50]
#[0, 1, 2, 3,  4,  5,  6,  7]
# Called when the node enters the scene tree for the first time.
func _ready():
	fire_rate = 11
	alt_fire = null
	zoom_change = 9.9
	damages[0] = 39
	damages[1] = damages[0]
	damages[2] = damages[0]
	damages[3] = damages[0]
	damages[4] = 35
	damages[5] = damages[4]
	damages[6] = 31
	damages[7] = damages[6]
	
	head_damages[0] = 156
	head_damages[1] = head_damages[0]
	head_damages[2] = head_damages[0]
	head_damages[3] = head_damages[0]
	head_damages[4] = 140
	head_damages[5] = head_damages[4]
	head_damages[6] = 124
	head_damages[7] = head_damages[6]
	
	leg_damages[0] = 33
	leg_damages[1] = leg_damages[0]
	leg_damages[2] = leg_damages[0]
	leg_damages[3] = leg_damages[0]
	leg_damages[4] = 30
	leg_damages[5] = leg_damages[4]
	leg_damages[6] = 26
	leg_damages[7] = leg_damages[6]
	zoom = 1.25
	zoom_time = "unknown"
	#need to change the zoom_net_change
	zoom_net_change = null
	price = 2900
	calc_vals()
	print("----------------------------------------------------")
	print("P H A N T O M")
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
