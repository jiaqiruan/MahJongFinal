// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function UpdatePlayableDeckUI()
{
	LDeckRepositionCentered(playable_list, playable_deck_offset_x, playable_deck_offset_y, card_spacing);
}
function UpdateDeckUI()
{
	LDeckRepositionTopMiddledByRows(deck_list, deck_offset_x, deck_offest_y, card_spacing, 12, 15);
}
function UpdatePlayerDeckUI()
{
	LDeckRepositionTopMiddledByRows(player_list, player_deck_offset_x, player_deck_offset_y, card_spacing, 20, 65);
}
function UpdateDiscardDeckUI()
{
	for(var i = 0; i < ds_list_size(discard_list); i++)
	{
		ds_list_find_value(discard_list, i).Hide();
		ds_list_find_value(discard_list, i).x = 0;
		ds_list_find_value(discard_list, i).y = 0;
	}
}
function UpdateButtons()
{
	var buttons[];
	for (var i = 0; i < instance_number(l_obj_button_parent); i++;)
	{
		buttons[i] = instance_find(l_obj_button_parent,i);
		if(buttons[i] != noone)
			buttons[i].CheckOpenState(game_state);
	}
}

function UpdateUI()
{
	UpdatePlayableDeckUI();
	UpdatePlayerDeckUI();
	UpdateDeckUI();
	UpdateDiscardDeckUI();
	UpdateButtons();
}

function ShowWiningHandsPanel()
{
	hands_panel = instance_find(l_obj_hands_panel, 0);
	game = instance_find(l_obj_game, 0);
	hands_panel.OpenPanel(global.game.wining_hands_array);
}

function HideWiningHandsPanel()
{
	hands_panel = instance_find(l_obj_hands_panel, 0);
	hands_panel.ClosePanel();
}
function OpenShopPanel()
{
	shop_panel = instance_find(l_obj_shop_panel, 0);
	shop_panel.OpenPanel();
}
function CloseShopPanel()
{
	shop_panel = instance_find(l_obj_shop_panel, 0);
	shop_panel.ClosePanel();
}