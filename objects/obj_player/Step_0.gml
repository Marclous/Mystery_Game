keyleft = keyboard_check(ord("A"))
keyright = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
keyInteract = keyboard_check(ord("E"))

inputDirection = point_direction(0,0,keyright-keyleft,keyDown-keyUp)
inputMagnitude = (keyright-keyleft !=0) || (keyDown-keyUp != 0)



if global.free_move == true {
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection)
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection)
}else if global.free_move == false {
	hSpeed = 0
	vSpeed = 0
}


if place_meeting(x + hSpeed, y, oSolidWall) {
	hSpeed = 0
}
if place_meeting(x, y + vSpeed, oSolidWall) {
	vSpeed = 0
}
var interactionRadius = 16;
if keyboard_check_pressed(ord("E")) {
    // Loop through a grid around the player
    var found = false;
    for (var dx = -interactionRadius; dx <= interactionRadius; dx += 16) { // Adjust the step as needed
        for (var dy = -interactionRadius; dy <= interactionRadius; dy += 16) { // Adjust the step as needed
            if (place_meeting(x + dx, y + dy, obj_apple)) {
               show_debug_message("apple")
			   startDialogue("Apple")
			   var key = instance_create_depth(obj_apple.x-5,obj_apple.y-10, -999,obj_key)
			   instance_destroy(obj_apple)
			   has_apple = true
               found = true;
               break;
            }
			if (place_meeting(x + dx, y + dy, obj_car)) {
               show_debug_message("car")
			   startDialogue("Car")
               found = true;
               break;
            }
			if (place_meeting(x + dx, y + dy, obj_key)) && has_apple {
               show_debug_message("key")
			   startDialogue("Key")
			   instance_destroy(obj_key)
			   has_key = true
               found = true;
               break;
            }
			if (place_meeting(x + dx, y + dy, obj_door)) && has_key {
               show_debug_message("opendoor")
			   startDialogue("OpenDoor")
			   room_goto(rm_kitchen)
               found = true;
               break;
            }else if (place_meeting(x + dx, y + dy, obj_door)) {
				show_debug_message("door")
				startDialogue("Door")
				found = true
				break
			}
        }
        if (found) break;
    }
}
x += hSpeed
y += vSpeed

var _oldsprite = sprite_index
if (inputMagnitude != 0) && global.free_move == true {
	
	direction = inputDirection
	sprite_index = spriteWalk
}	else sprite_index = spriteIdle
if _oldsprite != sprite_index localframe = 0

playeranimationsprite()