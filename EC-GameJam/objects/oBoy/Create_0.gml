/// @description Init Vars

//gravity = 1.0;


hsp = 0;
vsp = 0;

tilemap = layer_tilemap_get_id("Collision");


enum BOY 
{
	IDLE = 0,
	RIGHT = 1,
	LEFT = 2,
	JUMP = 3,
	FALL = 4
}

state = BOY.IDLE;

right = 0
left = 0
jump = 0

