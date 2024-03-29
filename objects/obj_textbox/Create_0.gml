//Input
confirm_key = vk_space
up_key = vk_up
down_key = vk_down
max_input_delay = 5
input_delay = max_input_delay


//Poition
margin = 16
padding = 8
width = display_get_gui_width() - margin * 2
height = sprite_height

x = (display_get_gui_width() - width) / 2
y = display_get_gui_height() - height - margin

//Text
text_font = fnt_Text
text_color = c_white
text_speed = 0.2
text_x = padding
text_y = padding
text_width = width - padding * 2

option_x = padding
option_y = padding
option_spacing = 60
option_selection_indent =24
option_width = 300
option_height = 40
option_text_x = 20
option_text_color = c_white

actions = []
current_action = -1

text = ""
text_progress = 0
text_length = 0

options = []
current_option = 0
option_count = 0
setEnd = 0

//Methods
//Start a conversation
setTopic = function(topic) {
	actions = global.topics[$ topic]
	current_action = -1
	
	next()
}

//Next sentence
next = function() {
	current_action++
	if (current_action >= array_length(actions)) {
		instance_destroy()
	}
	else {
		actions[current_action].act(id)
	}
}

//Display text
setText = function(newText) {
	text= newText
	text_length = string_length(newText)
	text_progress = 0
}

setRoom = function(roomNum) {
	if roomNum == 1 {
		room_goto(rm_voice_happy)
	}else if roomNum == 2 {
		room_goto(rm_voice_angry)
	}else return
}