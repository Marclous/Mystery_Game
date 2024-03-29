if instance_exists(obj_textbox) {
	global.free_move = false
	//if obj_textbox.setEnd == 1 room_goto(rm_voice_happy)
	//else if obj_textbox.setEnd == 2 room_goto(rm_voice_angry)
}
else {
	global.free_move = true
}