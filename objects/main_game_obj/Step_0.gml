if keyboard_check_pressed(vk_escape)
{
    
    if paused == false
    {
		instance_deactivate_all(true)
		paused = true
	} else {
		instance_activate_all()
		paused = false
	}
}
if(hp <= 0)
{
	room_goto(end_rm)
}
