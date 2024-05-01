depth = m_depth;

if(show_button)
{
	draw_self();

	draw_set_font(l_font_day_dream);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x, y, button_text, image_xscale * text_scale, image_yscale * text_scale, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}



