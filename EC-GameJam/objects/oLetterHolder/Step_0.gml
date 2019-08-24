/// @description Insert description here
// You can write your code in this editor

// check if removing letter

if keyboard_check_pressed (vk_backspace) {
	for (var i=array_length_1d(oBridge.bridge)-1; i>=0; i--) {
	
		var b = oBridge.bridge[i];
		if b.myLetter != noone {
		
			var l = b.myLetter;
			b.myLetter = noone;
		
			l.x = l.xstart;
			l.y = l.ystart;
			l.placed = false;
			break;
		}
	
	}
}