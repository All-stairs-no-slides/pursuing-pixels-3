
if(room == game_1_rm)
{
	draw_sprite(heart_spr, 0, 64, 64)
	draw_text_ext_transformed(128, 64, hp, 10, 10, 3, 3, 0)

	draw_sprite(coin_spr, 0, 64, 128)
	draw_text_ext_transformed(128, 128, gold, 10, 10, 3, 3, 0)
}

if(room == end_rm)
{
	draw_sprite(coin_spr, 0, 64, 128)
	draw_text_ext_transformed(128, 128, gold, 10, 10, 3, 3, 0)
}





