extends "res://guns/gunTemplate.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#[0, 8, 9, 10, 15, 20, 30, 50]
#[0, 1, 2, 3,  4,  5,  6,  7]
# Called when the node enters the scene tree for the first time.
func _ready():
	fire_rate = 13.33
	alt_fire = null
	zoom_change = 12
	damages[0] = 26
	damages[1] = damages[0]
	damages[2] = damages[0]
	damages[3] = damages[0]
	damages[4] = damages[0]
	damages[5] = 22
	damages[6] = damages[5]
	damages[7] = damages[5]
	
	head_damages[0] = 78
	head_damages[1] = head_damages[0]
	head_damages[2] = head_damages[0]
	head_damages[3] = head_damages[0]
	head_damages[4] = head_damages[0]
	head_damages[5] = 66
	head_damages[6] = head_damages[5]
	head_damages[7] = head_damages[5]
	
	leg_damages[0] = 22
	leg_damages[1] = leg_damages[0]
	leg_damages[2] = leg_damages[0]
	leg_damages[3] = leg_damages[0]
	leg_damages[4] = leg_damages[0]
	leg_damages[5] = 18
	leg_damages[6] = leg_damages[5]
	leg_damages[7] = leg_damages[5]
	
	calc_ttk()
	zoom = 1.15
	zoom_time = "unknown"
	#need to change the zoom_net_change
	zoom_net_change = null
	price = 1600


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
