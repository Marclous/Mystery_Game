function playeranimationsprite(){
	var _cardinalDirection = round(direction/90)
	var _totalframes = sprite_get_number(sprite_index) / 4
	image_index = localframe + (_cardinalDirection * _totalframes)
	localframe += sprite_get_speed(sprite_index) / 60

	if localframe >= _totalframes {
		animationEnd = true
		localframe -= _totalframes
	}else animationEnd = false
}