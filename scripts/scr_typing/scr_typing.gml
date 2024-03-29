function startDialogue(topic) {
	if instance_exists(obj_textbox) return
	
	var inst =	instance_create_depth(x,y, -999, obj_textbox)
	inst.setTopic(topic)
	
}


function type(x, y, text, progress, width){
	var draw_x = 0
	var draw_y = 0
	
	for (var i = 1; i <= progress ; i++) {
		var char = string_char_at(text, i)
		
		if(char == "\n") {
			draw_x = 0
			draw_y += string_height("A")
		}
		else if char == " " {
			draw_x += string_width(char)
			
			var word_width = 0
			for(var j = i + 1; j <= string_length(text); j++)
			{
				var word_char = string_char_at(text, j)
				
				if word_char == "\n" || word_char == " " break
				
				word_width += string_width(word_char)
				if draw_x + word_width > width {
					draw_x = 0
					draw_y += string_height("A")
					break
				}
			}
		}
		else{
			draw_text(x + draw_x, y + draw_y, char)
			draw_x += string_width(char)
		}
	}
}