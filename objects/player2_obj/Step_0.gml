gravity = 0.1
var _hinput = keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))
var _vinput = keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"))

var _hrelease = keyboard_check_released(ord("A")) - keyboard_check_released(ord("D"))
var _vrelease = keyboard_check_released(ord("W")) - keyboard_check_released(ord("S"))

// JIC check
if(is_undefined(grapple))
{
	grapple = false
}

if(keyboard_check_pressed(ord("E"))){
	if(1 != state && state != 2 && state != 3)
	{ 
		grapple = instance_create_layer(x, y, "foreground_instances", grapple_obj,
		{ 
			direction : point_direction(x, y, target.x, target.y),
			speed : 15,
			creator: self
		});
		state = 1;
	}
}



if(keyboard_check_pressed(vk_space))
{
	if(direction != 90){
		direction = 90
		speed = jump_speed
	} else { 
		speed += (jump_speed/2)
	}
	state = 0
}

if(keyboard_check_pressed(vk_shift) && dash)
{
	state = 0
	main.added_speed += sprint_speed
	target.speed -= sprint_speed
	alarm[0] = game_get_speed(gamespeed_fps) * 0.3
	dash = false
}

if(is_undefined(grapple))
{
	grapple = false
}

// main state
switch(state){
	case 0:
		if(grapple){grapple.exists = false; grapple = false break;}
		break;
	// send grapple
	case 1:
		if(!grapple){state = 0; break;}
		
		grapple.image_angle = point_direction(x, y, grapple.x, grapple.y)
		grapple.image_index = 1
		grapple.image_xscale = distance_to_point(grapple.x, grapple.y) / 64
		if(grapple.grappled)
		{
			state = 2;
		}
		break;
	// grappeled
	case 2:
		grapple.image_angle = point_direction(x, y, target.x, target.y)
		grapple.image_xscale = distance_to_point(grapple.x, grapple.y) / 64
		direction = 270 - (180 * (target.y < y))
		if(!keyboard_check(ord("E")))
		{

			target.speed = 0
			state = 0
			break;
		} 
		if(target.x != x){
			target.speed += 1

			target.direction = 180
		}
		speed += 1
		
		if(point_direction(x, y, target.x, target.y) >= 350 || point_direction(x, y, target.x, target.y) <= 10)
		{
			y = target.y
			speed = 0
		}
		break;
		
		// mounted
		case 3:
			if(grapple){grapple.exists = false; grapple = false}

			target.x = x
			y = target.y
			target.speed = 0
			speed = 0
			gravity = 0
			break;		
		
}

// the limiter on how far left the target can go
if(target.x < x){
	target.x = x
	target.speed = 0
			
}
