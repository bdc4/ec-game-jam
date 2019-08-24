/// @description UPDATE MOVEMENT AND IMG INDEX

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
	image_index = 0;
	speed = 0;
	break;
	
	case BOY.RIGHT:
	image_index += 1;
	if (image_index == 3)
	{
		image_index -= 1;
	} else if (image_index == 1)
	{
		image_index += 1;		
	}
	speed = 1.0;
	direction = 0;
	break;
	
	case BOY.LEFT:
	direction = 180;
	image_index += 1;
	if (image_index == 3)
	{
		image_index -= 1;
	} else if (image_index == 1)
	{
		image_index += 1;		
	}
	speed = -1.0;
	break; 
	
	case BOY.JUMP:
	y += 5.0;
	if (y = ystart + 25)
		state = BOY.FALL;
	break;
	
	case BOY.FALL:
	y -= 3.0;
	break;
}