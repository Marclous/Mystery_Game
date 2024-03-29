global.topics = {}

global.topics[$ "Inbed"] = [
	CHOICE(global.gameinfo.rm_in_bed.lines[0].text,
		OPTION(global.gameinfo.rm_in_bed.lines[1].choices[0].text, "Chose Where"),
		OPTION(global.gameinfo.rm_in_bed.lines[1].choices[1].text, "Chose Who")
		),
]

global.topics[$ "Chose Where"] = [
	TEXT(global.gameinfo.rm_in_bed.lines[1].choices[0].lines[0].text),
	TEXT(global.gameinfo.rm_in_bed.lines[2].text)
	]
	
global.topics[$ "Chose Who"] = [
	TEXT(global.gameinfo.rm_in_bed.lines[1].choices[1].lines[0].text),
	TEXT(global.gameinfo.rm_in_bed.lines[2].text)
	]

global.topics[$ "Apple"] = [
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_apple.lines[0].text),
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_apple.lines[1].text)
	]
	
global.topics[$ "Car"] = [
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_car.lines[0].text)
	]
	
global.topics[$ "Key"] = [
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_key.lines[0].lines[0].text)
	]
	
global.topics[$ "Door"] = [
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_door.lines[1].text)
	]

global.topics[$ "OpenDoor"] = [
	TEXT(global.gameinfo.rm_bedroom.interactables.obj_door.lines[0].lines[0].text)
	]
	
global.topics[$ "Kitchen"] = [
	TEXT(global.gameinfo.rm_kitchen.lines[0].text)
	]

global.topics[$ "KitchenDoor"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_door.lines[1].text)
	]

global.topics[$ "VoiceDoor"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_door.lines[0].lines[0].text)
	]