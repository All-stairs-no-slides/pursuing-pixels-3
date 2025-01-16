if(!keyboard_check(ord("E")) && x < start_x)
{
	direction = 0
	speed = 3
}

if(x > start_x)
{
	x = start_x
	speed = 0
}