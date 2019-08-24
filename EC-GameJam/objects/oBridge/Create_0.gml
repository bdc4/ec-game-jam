/// @description Insert description here
// You can write your code in this editor

//target word
answer = "MOUSE";
bridge = [];

// Generate all the bridge objects
for (var i=1; i<string_length(answer)+1; i++) {
	var lh = instance_create_layer(x+80*i,y,"BridgeLayer",oLetterHolder);
	bridge[i-1] = lh;
	with lh {
		var l = instance_create_layer(room_width/4+i*80, room_height*3/4, "HolderLayer", oLetter);
		l.char = string_char_at(other.answer, i);
	}
}
