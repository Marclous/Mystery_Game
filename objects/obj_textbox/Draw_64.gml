
draw_sprite_stretched(sprite_index, 0, x, y, width,	height)

var draw_text_x = x
var draw_text_y = y
var draw_text_width = text_width

var finished = text_progress == text_length

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(text_font)
draw_set_color(text_color)
type(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, draw_text_width)

if finished && option_count > 0 {
	draw_set_valign(fa_middle)
	draw_set_color(option_text_color)
	for (var i = 0; i < option_count; i++) {
		var opt_x = x + option_x
		var opt_y = y - 50 + option_y - (option_count - i - 1) * option_spacing
		
		if i == current_option {
			opt_x += option_selection_indent
			draw_sprite(sOptionArrow, 0, x, opt_y)
		}
		
		draw_sprite_stretched(sOptionBox, 0, opt_x, opt_y - option_height / 2, option_width, option_height)
		draw_text(opt_x + option_text_x, opt_y, options[i].text)
	}
}