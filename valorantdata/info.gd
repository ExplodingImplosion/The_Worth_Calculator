extends Control

onready var avg_gun_name
onready var avg_fire_rate

onready var avg_damages = [0,0,0,0,0,0,0,0]
onready var avg_rifle_damages = [0,0,0,0,0,0,0,0]
onready var avg_smg_damages = [0,0,0,0,0,0,0,0]
onready var avg_pistol_damages = [0,0,0,0,0,0,0,0]
onready var avg_shotgun_damages = [0,0,0,0,0,0,0,0]
onready var avg_sniper_damages = [0,0,0,0,0,0,0,0]
onready var avg_lmg_damages = [0,0,0,0,0,0,0,0]

onready var avg_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_rifle_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_smg_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_pistol_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_shotgun_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_sniper_head_damages = [0,0,0,0,0,0,0,0]
onready var avg_lmg_head_damages = [0,0,0,0,0,0,0,0]

onready var avg_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_rifle_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_smg_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_pistol_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_shotgun_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_sniper_leg_damages = [0,0,0,0,0,0,0,0]
onready var avg_lmg_leg_damages = [0,0,0,0,0,0,0,0]


onready var avg_ttk = [0,0,0,0,0,0,0,0]
onready var avg_ttk_light = [0,0,0,0,0,0,0,0]
onready var avg_ttk_heavy = [0,0,0,0,0,0,0,0]

onready var avg_ttk_head = [0,0,0,0,0,0,0,0]
onready var avg_ttk_ttk_head_light = [0,0,0,0,0,0,0,0]
onready var avg_ttk_ttk_head_heavy = [0,0,0,0,0,0,0,0]

onready var avg_ttk_leg = [0,0,0,0,0,0,0,0]
onready var avg_ttk_ttk_leg_light = [0,0,0,0,0,0,0,0]
onready var avg_ttk_ttk_leg_heavy = [0,0,0,0,0,0,0,0]

onready var avg_tick_ttk = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_light = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_heavy = [0,0,0,0,0,0,0,0]

onready var avg_tick_ttk_head = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_head_light = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_head_heavy = [0,0,0,0,0,0,0,0]

onready var avg_tick_ttk_leg = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_leg_light = [0,0,0,0,0,0,0,0]
onready var avg_tick_ttk_leg_heavy = [0,0,0,0,0,0,0,0]

onready var avg_alt_fire
onready var avg_zoom
onready var avg_zoom_time
onready var avg_zoom_change
onready var avg_zoom_net_change
onready var avg_price
onready var avg_bang4buck

#99% sure these are depreciated
#onready var vandal = preload("guns/Rifles/Vandal.gd")
#onready var phantom = preload("guns/Rifles/Phantom.gd")
#onready var bulldog = preload("guns/Rifles/Bulldog.gd")
#onready var guardian = preload("guns/Rifles/Guardian.gd")
#onready var spectre = preload("guns/SMGs/Spectre.gd")
#onready var stinger = preload("guns/SMGs/Stinger.gd")



# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree().create_timer(1.0), "timeout")
	calc_avgs()

func calc_avgs():
	calc_avg_damages("rifles")
	calc_avg_damages("smgs")
	yield(get_tree().create_timer(1.0), "timeout")
	print(avg_rifle_damages)
	print(avg_smg_damages)

func calc_avg_damages(group):
	for child in get_tree().get_nodes_in_group(group):
		if group == "guns":
			for i in range(8):
				avg_damages[i] += float(child.damages[i]) / 17
		if group == "rifles":
			for i in range(8):
				avg_rifle_damages[i] += float(child.damages[i]) / 4
		elif group == "smgs":
			for i in range(8):
				avg_smg_damages[i] += float(child.damages[i]) / 2
		elif group == "pistols":
			for i in range(8):
				avg_pistol_damages[i] += float(child.damages[i]) / 5
		elif group == "shotguns":
			for i in range(8):
				avg_shotgun_damages[i] += float(child.damages[i]) / 2
		elif group == "snipers":
			for i in range(8):
				avg_sniper_damages[i] += float(child.damages[i]) / 2
		elif group == "lmgs":
			for i in range(8):
				avg_lmg_damages[i] += float(child.damages[i]) / 2
