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

global.topics[$ "Fish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fish.lines[0].text)
	]
	
global.topics[$ "VoiceFish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fish.lines[1].lines[0].text)
	]

global.topics[$ "WoodenFish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_wooden_fish.lines[0].text)
	]

global.topics[$ "PlasticFish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_plastic_fish.lines[0].text)
	]
	
global.topics[$ "VoicePlasticFish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_plastic_fish.lines[1].lines[0].text)
	]

global.topics[$ "SingingFish"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_singing_fish.lines[0].speaker),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_singing_fish.lines[0].text),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_singing_fish.lines[1].text)
	]
	
global.topics[$ "Fridge"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[0].text),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[1].text),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[2].speaker),
	CHOICE(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[2].text,
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[3].choices[0].text, "FridgeResponse"),
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[3].choices[1].text, "FridgeResponse")
		),
	]

global.topics[$ "FridgeResponse"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[4].speaker),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[0].lines[4].text)
	]

global.topics[$ "VoiceFridge"] = [
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[0].speaker),
	TEXT(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[0].text),
	
	]
global.topics[$ "VoiceFridgeFish"] = [
	CHOICE(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[0].text,
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[1].choices[0].text,noone,1)
		
		)
	]
	
global.topics[$ "VoiceFridgeApple"] = [
	CHOICE(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[0].text,
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[1].choices[1].text,noone,2)
		
		)
	]

global.topics[$ "VoiceFridgeFishApple"] = [
	CHOICE(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[0].text,
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[1].choices[0].text,noone,1),
		OPTION(global.gameinfo.rm_kitchen.interactables.obj_fridge.lines[1].lines[1].choices[1].text,noone,2),
		)
	]

global.topics[$ "Happy"] = [
	TEXT(global.gameinfo.rm_voice_happy.lines[0].text),
	TEXT(global.gameinfo.rm_voice_happy.lines[1].text)
	]
	
global.topics[$ "Angry"] = [
	TEXT(global.gameinfo.rm_voice_angry.lines[0].speaker),
	TEXT(global.gameinfo.rm_voice_angry.lines[0].text),
	TEXT(global.gameinfo.rm_voice_angry.lines[1].text),
	TEXT(global.gameinfo.rm_voice_angry.lines[2].text)
	]
