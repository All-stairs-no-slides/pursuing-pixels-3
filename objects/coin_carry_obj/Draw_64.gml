if(room == end_rm)
{
	c = true
	draw_sprite(coin_spr, 0, 64, 128)
	draw_text_ext_transformed(128, 128, coins, 10, 10, 3, 3, 0)
}

if(room != end_rm && c)
{
	instance_destroy()
}













