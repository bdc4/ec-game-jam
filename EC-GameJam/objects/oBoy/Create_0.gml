/// @description Init Vars

gravity = 1.0;
speed = 1.0;
direction = 0;
image_speed = 0.25;


enum BOY 
{
	IDLE = 0,
	RIGHT = 1,
	LEFT = 2,
	JUMP = 3,
	FALL = 4
}

state = IDLE;

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_up);

