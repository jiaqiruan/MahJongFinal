event_inherited();
	
if(panel_opened && !(array_length(current_data) == 0))
{
	draw_set_font(l_font_day_dream);

	draw_set_halign(fa_center);
	draw_set_valign(fa_left);
	
	for(var i = 0; i < array_length(current_data); i++)
	{
		draw_text_transformed(x + hands_x_offset, y + hands_y_offest + hands_vertical_spacing * i, array_get(current_data, i).name, wining_hand_scale, wining_hand_scale, 0)
		draw_sprite_ext(array_get(current_data, i).sprite, image_index, x + hands_x_offset + hands_spacing, y - 30 + hands_y_offest + hands_vertical_spacing * i, wining_hand_scale, wining_hand_scale, 0, c_white, 1);
	}

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}


