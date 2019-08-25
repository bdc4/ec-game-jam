/// @description UPDATE MOVEMENT AND IMG INDEX

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_up);

hsp = (right - left) * 4;


var bbox_side; 

if(left)
	state = BOY.LEFT;

if(right)
	state = BOY.RIGHT;

if(jump and state != BOY.JUMP and state != BOY.FALL)
	state = BOY.JUMP;

if(state != BOY.LEFT and 
   state != BOY.RIGHT and
   state != BOY.JUMP and
   state != BOY.FALL)
{
	state = BOY.IDLE;	
}

switch (state)
{
	case BOY.IDLE:
	bbox_side = bbox_bottom
	image_index = 0;
	image_speed = 0;
	hsp = 0;
	break;
	
	case BOY.RIGHT:
	bbox_side = bbox_right;
	image_index += 1;
	if (image_index == 3)
	{
		image_index -= 1;
	} else if (image_index == 1)
	{
		image_index += 1;		
	}
	image_xscale = 1;
	break;
	
	case BOY.LEFT:
	bbox_side = bbox_left;
	image_index += 1;
	if (image_index == 3)
	{
		image_index -= 1;
	} else if (image_index == 1)
	{
		image_index += 1;		
	}
	image_xscale = -1.0;
	break; 
	
	case BOY.JUMP:
	bbox_side = bbox_top;
	vsp += 5.0;
	if (vsp = ystart + 25)
		state = BOY.FALL;
	break;
	
	case BOY.FALL:
	bbox_side = bbox_bottom
	vsp -= 3.0;
	break;
}

if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) or 
   (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0)
{
	if (hsp > 0)
		x = x - (x mod 72)+ 71 - (bbox_right - x);
	else
		x = x - (x mod 72) - (bbox_left - x);
	hsp = 0;
}
x += hsp;

if (tilemap_get_at_pixel(tilemap, bbox_side + vsp, bbox_top) != 0) or 
   (tilemap_get_at_pixel(tilemap, bbox_side + vsp, bbox_bottom) != 0)
{
	if (vsp > 0)
		y = y - (y mod 72)+ 71 - (bbox_bottom - y);
	else
		y = y - (y mod 72) - (bbox_left - y);
	vsp = 0;
}
y += vsp;