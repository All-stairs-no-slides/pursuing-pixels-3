while (credits > 0)
{
	var _r = ceil(random(2))
	instance_create_depth(x, y, depth, enemies[_r - 1])
	credits -= 1
}
var _r = ceil(random(7))
var _set = []

for(var _i = 0; _i < _r; _i++)
{
	var _rand = random(10)
	done = false
	while(!done)
	{
		var _rand = random(10)
		done = true
		for(var _j = 0; _j < array_length(_set); _j++)
		{
			if(_set[_j] == _rand)
			{
				done = false
			}
		}
	}
	instance_create_depth(x, (room_height/10) * _rand, depth, gold_obj)
}

alarm[0] = game_get_speed(gamespeed_fps) * 3











