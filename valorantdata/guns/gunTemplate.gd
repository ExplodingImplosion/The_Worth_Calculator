extends Node

onready var fire_rate
onready var damages = [0,0,0,0,0,0,0,0]
onready var head_damages = [0,0,0,0,0,0,0,0]
onready var leg_damages = [0,0,0,0,0,0,0,0]

onready var ttk = [0,0,0,0,0,0,0,0]
onready var ttk_light = [0,0,0,0,0,0,0,0]
onready var ttk_heavy = [0,0,0,0,0,0,0,0]

onready var ttk_head = [0,0,0,0,0,0,0,0]
onready var ttk_head_light = [0,0,0,0,0,0,0,0]
onready var ttk_head_heavy = [0,0,0,0,0,0,0,0]

onready var ttk_leg = [0,0,0,0,0,0,0,0]
onready var ttk_leg_light = [0,0,0,0,0,0,0,0]
onready var ttk_leg_heavy = [0,0,0,0,0,0,0,0]

onready var tick_ttk = [0,0,0,0,0,0,0,0]
onready var tick_ttk_light = [0,0,0,0,0,0,0,0]
onready var tick_ttk_heavy = [0,0,0,0,0,0,0,0]

onready var tick_ttk_head = [0,0,0,0,0,0,0,0]
onready var tick_ttk_head_light = [0,0,0,0,0,0,0,0]
onready var tick_ttk_head_heavy = [0,0,0,0,0,0,0,0]

onready var tick_ttk_leg = [0,0,0,0,0,0,0,0]
onready var tick_ttk_leg_light = [0,0,0,0,0,0,0,0]
onready var tick_ttk_leg_heavy = [0,0,0,0,0,0,0,0]

onready var alt_fire
onready var zoom
onready var zoom_time
onready var zoom_change
onready var zoom_net_change
onready var price
onready var bang4buck = 0
onready var bang4buck_chest = 0
onready var bang4buck_head = 0
onready var bang4buck_leg = 0
onready var bang4buck_light = 0
onready var bang4buck_heavy = 0
#ranges may be depreciated
onready var ranges = [0, 8, 9, 10, 15, 20, 30, 50]


func _ready():
	pass


func calc_ttk():
	#------------------------------------------------------------------
	#chest damages
	for dist in range(8):
		ttk[dist] = (ceil(100.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk[dist] = calc_ticks(ttk[dist])
	
	for dist in range(8):
		ttk_light[dist] = (ceil(125.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_light[dist] = calc_ticks(ttk_light[dist])
	
	for dist in range(8):
		ttk_heavy[dist] = (ceil(150.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_heavy[dist] = calc_ticks(ttk_heavy[dist])
	#------------------------------------------------------------------
	#head damages
	for dist in range(8):
		ttk_head[dist] = (ceil(100.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_head[dist] = calc_ticks(ttk_head[dist])
	
	for dist in range(8):
		ttk_head_light[dist] = (ceil(125.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_head_light[dist] = calc_ticks(ttk_head_light[dist])
	
	for dist in range(8):
		ttk_head_heavy[dist] = (ceil(150.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_head_heavy[dist] = calc_ticks(ttk_head_heavy[dist])
	#------------------------------------------------------------------
	#leg damages
	for dist in range(8):
		ttk_leg[dist] = (ceil(100.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_leg[dist] = calc_ticks(ttk_leg[dist])
	
	for dist in range(8):
		ttk_leg_light[dist] = (ceil(125.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_leg_light[dist] = calc_ticks(ttk_leg_light[dist])
	
	for dist in range(8):
		ttk_leg_heavy[dist] = (ceil(150.0/damages[dist]) / fire_rate) - (1.0/fire_rate)
		tick_ttk_leg_heavy[dist] = calc_ticks(ttk_leg_heavy[dist])

func calc_ticks(target):
	return ceil(target/0.0078125)


#WIP
func calc_bang4buck():
	bang4buck += ttkvals(ttk, bang4buck)
	bang4buck_chest += ttkvals(ttk, bang4buck_chest)
	bang4buck += ttkvals(ttk_light, bang4buck)
	bang4buck_chest += ttkvals(ttk_light, bang4buck_chest)
	bang4buck_light += ttkvals(ttk_light, bang4buck_light)
	bang4buck += ttkvals(ttk_heavy, bang4buck)
	bang4buck_chest += ttkvals(ttk_heavy, bang4buck_chest)
	bang4buck_heavy += ttkvals(ttk_heavy, bang4buck_heavy)
	
	bang4buck += ttkvals(ttk_head, bang4buck)
	bang4buck_head += ttkvals(ttk_head, bang4buck_head)
	bang4buck += ttkvals(ttk_head_light, bang4buck)
	bang4buck_head += ttkvals(ttk_head_light, bang4buck_head)
	bang4buck_light += ttkvals(ttk_head_light, bang4buck_light)
	bang4buck += ttkvals(ttk_head_heavy, bang4buck)
	bang4buck_head += ttkvals(ttk_head_heavy, bang4buck_head)
	bang4buck_heavy += ttkvals(ttk_head_heavy, bang4buck_heavy)
	
	bang4buck += ttkvals(ttk_leg, bang4buck)
	bang4buck_leg += ttkvals(ttk_leg, bang4buck_leg)
	bang4buck += ttkvals(ttk_leg_light, bang4buck)
	bang4buck_leg += ttkvals(ttk_leg_light, bang4buck_leg)
	bang4buck_light += ttkvals(ttk_leg_light, bang4buck_light)
	bang4buck += ttkvals(ttk_leg_heavy, bang4buck)
	bang4buck_leg += ttkvals(ttk_leg_heavy, bang4buck_leg)
	bang4buck_heavy += ttkvals(ttk_leg_heavy, bang4buck_heavy)
	
	bang4buck = ((1 - (bang4buck/72)) / price) * 10000
	bang4buck_chest = ((1 - (bang4buck_chest/24)) / price) * 10000
	bang4buck_head = ((1 - (bang4buck_head/24)) / price) * 10000
	bang4buck_leg = ((1 - (bang4buck_leg/24)) / price) * 10000
	bang4buck_heavy = ((1 - (bang4buck_heavy/24)) / price) * 10000
	bang4buck_light = ((1 - (bang4buck_light/24)) / price) * 10000

func ttkvals(id, bang):
	for i in range(8):
		bang += id[i] / 8
	return bang

func calc_vals():
	calc_ttk()
	calc_bang4buck()
