var _hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if(_hovering && mouse_check_button_pressed(mb_left)){
	room_goto(settings_rm);
}

