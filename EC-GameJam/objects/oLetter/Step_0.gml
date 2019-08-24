/// @description Insert description here
// You can write your code in this editor

//put into the first open letter holder
var b = noone;
for (var i=0; i<array_length_1d(oBridge.bridge); i++) {
	b = oBridge.bridge[i];
	if b.myLetter == noone {
		break;
	}
}

if keyboard_check_pressed(ord(char)) and !placed and oBridge.canPlace {
			
	x = b.x;
	y = b.y;
	b.myLetter = id;
	placed = true;
	oBridge.canPlace = false;
	
}