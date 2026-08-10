extends TileMap
@onready var highscore: RichTextLabel = $RichTextLabel2
@onready var button: Button = $Button
@onready var score: RichTextLabel = $RichTextLabel
@onready var pause: Sprite2D = $Pause
#region o orientations
var o_0 = [
	Vector2i(0,0),
	Vector2i(1,0),
	Vector2i(0,1),
	Vector2i(1,1),
]
var o_90 = [
	Vector2i(0,0),
	Vector2i(1,0),
	Vector2i(0,1),
	Vector2i(1,1)]
var o_180 = [
	Vector2i(0,0),
	Vector2i(1,0),
	Vector2i(0,1),
	Vector2i(1,1)
]
var o_270 = [
	Vector2i(0,0),
	Vector2i(1,0),
	Vector2i(0,1),
	Vector2i(1,1)
]
#endregion
#region l orientations
var l_0 = [
		Vector2i(2, 0),
		Vector2i(0, 1),
		Vector2i(1, 1),
		Vector2i(2, 1)
	]
var l_90 = [
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(1, 2),
	Vector2i(2, 2)
	]
var l_180 = [
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(0, 2)
	]
var l_270 = [
	Vector2i(0, 0),
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(1, 2)
]
#endregion
#region v orientations
var v_0 = [
	Vector2i(1, 0),
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(2, 1)
	]
var v_90 = [
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(1, 2)
	]
var v_180 = [
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(1, 2)
	]
var v_270 = [
	Vector2i(1, 0),
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(1, 2)
	]
#endregion
#region j orientations
var j_0 = [
	Vector2i(0, 0),
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(2, 1)
]
var j_90 = [
	Vector2i(1, 0),
	Vector2i(2, 0),
	Vector2i(1, 1),
	Vector2i(1, 2)
]
var j_180 = [
	Vector2i(0, 1), 
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(2, 2)
]
var j_270 = [
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(0, 2),
	Vector2i(1, 2)
]
#endregion
#region i orientations
var i_0 = [
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(3, 1)
]
var i_90 = [
	Vector2i(2, 0),
	Vector2i(2, 1),
	Vector2i(2, 2),
	Vector2i(2, 3)
]
var i_180 = [
	Vector2i(0, 2),
	Vector2i(1, 2),
	Vector2i(2, 2),
	Vector2i(3, 2)
]
var i_270 = [
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(1, 2),
	Vector2i(1, 3)
]
#endregion
#region z oreintations
var z_0 = [
	Vector2i(0, 0),
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(2, 1)
]
var z_90 = [
	Vector2i(2, 0),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(1, 2)
]
var z_180 = [
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(1, 2),
	Vector2i(2, 2)
]
var z_270 = [
	Vector2i(1, 0),
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(0, 2)
]
#endregion
#region s orientations
var s_0 = [
	Vector2i(1, 0),
	Vector2i(2, 0),
	Vector2i(0, 1),
	Vector2i(1, 1)
]
var s_90 = [
	Vector2i(1, 0),
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(2, 2)
]
var s_180 = [
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(0, 2),
	Vector2i(1, 2)
]
var s_270 = [
	Vector2i(0, 0),
	Vector2i(0, 1),
	Vector2i(1, 1),
	Vector2i(1, 2)
]
#endregion
#region peices
var I = {
	"p" :
	[
		i_0,
		i_90,
		i_180,
		i_270
	],
	"color":
		Vector2i(0,0)
}
var O = {
	"p" :
	[
		o_0,
		o_90,
		o_180,
		o_270
	],
	"color": 
		Vector2i(1,0)
}
var Z = {
	"p" :
	[
		z_0,
		z_90,
		z_180,
		z_270
	],
	"color":
		Vector2i(2,0)
}
var L = {
	"p" :
	[
		l_0,
		l_90,
		l_180,
		l_270
	],
	"color":
		Vector2i(3,0)
}
var J = {
	"p" :
	[
		j_0,
		j_90,
		j_180,
		j_270
	],
	"color":
		Vector2i(4,0)
}
var V = {
	"p" :
	[
		v_0,
		v_90,
		v_180,
		v_270
	],
	"color":
		Vector2i(5,0)
}
var S = {
	"p" :
	[
		s_0,
		s_90,
		s_180,
		s_270
	],
	"color":
		Vector2i(6,0)
}
#endregion
const rows = 20
const cols = 10
const direc := [Vector2i.LEFT, Vector2i.DOWN, Vector2i.RIGHT]
var steps : Array
var maxsteps = 50
var speed
var peice_full = [O, L, V, J, I, Z, S]
var peice_list = peice_full.duplicate()
var peice
var next_peice
var active_layer = 1
var back_layer = 0
var color_id = 2
var rot = 0
var rd = 0
var scor = 0
var still_go = true
var but = false
var spe
const starting_loc = Vector2i(5,1)
var current_pos

func _ready() -> void:
	HS.pausable = true
	pause.hide()
	scorer()
	speed = 1
	steps = [0, 0, 0]
	current_pos = starting_loc
	pick_peice()
	button.hide()
	highscore.add_text("High Score:               " + str(HS.hs))
	summon_peice()
func scorer():
	score.clear()
	score.add_text("SCORE:         " + str(scor))
func summon_peice():
	current_pos = starting_loc
	draw_shape(peice["p"][rot], current_pos, peice["color"])

func pick_peice():
	if not peice_list.is_empty():
		peice_list.shuffle()
		peice = peice_list.pop_front()
	else:
		peice_list = peice_full.duplicate()
		peice_list.shuffle()
		peice = peice_list.pop_front()
func draw_shape(peice, pos, color):
	for i in peice:
		set_cell(active_layer, pos + i, color_id, color)
func erase_shape(peice, pos):
	for i in peice:
		erase_cell(active_layer, pos + i)
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("pause"):
		if !HS.paused:
			get_tree().paused = true
			pause.show()
			HS.paused = true
	if but == true:
		if Input.is_action_just_released("but"):
			get_tree().reload_current_scene()
	if Input.is_action_just_pressed("r_right"):
		erase_shape(peice["p"][rot], current_pos)
		rd = 1
		can_r()
		if can_r():
			rot += 1
			if rot >=4:
				rot = 0
	if Input.is_action_just_pressed("r_left"):
		erase_shape(peice["p"][rot], current_pos)
		rd = -1
		can_r()
		if can_r():
			rot -= 1
			if rot <=-1:
				rot = 3
	steps[1] += speed
	if Input.is_action_pressed("down"):
		steps[1]+=10
	elif Input.is_action_pressed("left"):
		steps[0]+=10
	elif Input.is_action_pressed("right"):
		steps[2]+=10
	for i in range(steps.size()):
		if steps[i] >= maxsteps:
			erase_shape(peice["p"][rot], current_pos)
			move_peice(direc[i])
			steps[i]=0
			HS.paused = false
	draw_shape(peice["p"][rot], current_pos, peice["color"]) 
func move_peice(dir):
	if can_move(dir):
		current_pos += dir
		draw_shape(peice["p"][rot], current_pos, peice["color"])
	else:
		if dir == Vector2i.DOWN:
			land_peice()
			game_over()
			if still_go:
				check_rows()
				pick_peice()
				summon_peice()
func can_move(dir):
	var cm = true
	for i in peice["p"][rot]:
		if not is_free(i + current_pos + dir):
			cm = false
	return cm
func is_free(pos):
	return get_cell_source_id(back_layer, pos) == -1
func can_r():
	var cr = true
	var temprot = rot + rd
	if temprot >= 4:
		temprot = 0
	elif temprot <= -1:
		temprot = 3
	var tempr = peice["p"][temprot]
	for i in tempr:
		if not is_free(i + current_pos):
			cr = false
	return cr
func land_peice():
	for i in peice["p"][rot]:
		erase_cell(active_layer, current_pos + i)
		set_cell(back_layer, current_pos + i, color_id, peice["color"])
func check_rows():
	var row = rows
	while row >0:
		var count = 0
		for i in range(cols):
			if not is_free(Vector2i(i + 1,row)):
				count +=1
		if count == cols:
			shift(row)
			scor += 100
			scorer()
			spe = .0005 * scor
			speed += spe
		else: row -= 1
func shift(row):
	var atlas
	for i in range(row, 1, -1):
		for j in range(cols):
			atlas = get_cell_atlas_coords(back_layer, Vector2(j+1, i-1))
			if atlas == Vector2i(-1,-1):
				erase_cell(back_layer, Vector2i(j + 1, i))
			else:
				set_cell(back_layer, Vector2i(j + 1, i), color_id, atlas)
								
func game_over():
	for i in peice["p"][rot]:
		var pos = current_pos + i
		if pos.y <= 1 and not is_free(i + current_pos):
			land_peice()
			still_go = false
			button.show()
			HS.hs = scor
			but = true
			HS.pausable = false
			return



func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
