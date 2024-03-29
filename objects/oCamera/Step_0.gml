
var _camW = camera_get_view_width(cam)
var _camH = camera_get_view_height(cam)


x = obj_player.x - _camW/2
y = obj_player.y - _camH/2


x = clamp(x, 0, room_width-_camW)
y = clamp(y,0, room_height - _camH)

x += random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude))
camera_set_view_pos(cam, x, y)