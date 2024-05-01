/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

m_depth = -10010;

if(click_count % 2 == 0)
{
	OpenShopPanel();
	button_text = "CLOSE";
	sprite_index = spr_button_5;
}
else
{
	CloseShopPanel();
	button_text = "SHOP";
	sprite_index = spr_button_4;
}
click_count++;