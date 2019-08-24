/// @description Insert description here
// You can write your code in this editor

//target word
answer = "KITTENS";
bridge = [];
canPlace = true;

// Generate all the bridge objects
for (var i=1; i<string_length(answer)+1; i++) {
	var lh = instance_create_layer(x+80*i,y,"BridgeLayer",oLetterHolder);
	bridge[i-1] = lh;
	with lh {
		var l = instance_create_layer(room_width/4+i*80, room_height*3/4, "HolderLayer", oLetter);
		l.char = string_char_at(other.answer, i);
	}
}

var z = 0;

while (z < 120) {

	//get two random letters and swap their locations

	a = 0; b = 0;

	while (a == b) {
		var a = irandom(instance_number(oLetter)-1);
		var b = irandom(instance_number(oLetter)-1);
	}
	
	//shuffle location
	var _a = instance_find(oLetter, a);
	var _b = instance_find(oLetter, b);
	
	var ax = _a.x;
	var ay = _a.y;
	
	_a.x = _b.x;
	_a.y = _b.y;
	
	_b.x = ax;
	_b.y = ay;
	
	z++;
}

with (oLetter) {
	startingX = x;
	startingY = y;
}
