gravity = 0.1
grapple = false
target = instance_create_layer(x + 200, room_height/2, "foreground_instances", grapple_target_obj)
state = 0
sprint_speed = 4
jump_speed = 4

// this is for when the grapple hook is released so i can take it away from the added_speed var
dash = true

iframe = false