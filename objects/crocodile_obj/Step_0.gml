speed = 3 + main.added_speed 
gravity = 0.1

switch(state){
	case 0:
		direction = 180
		if(distance_to_object(player_parent_obj) < 50 && !jump && touch_floor)
		{
			state = 1
			alarm[0] = game_get_speed(gamespeed_fps) * 2
		}
		break;

	case 1:
		direction = point_direction(x, y, instance_nearest(x, y, player_parent_obj).x, instance_nearest(x, y, player_parent_obj).y)
		speed += 10
		state = 2
		break;
	
	case 2:
		break;
}




