show = true;

//dot suit = 1, bamboo suit = 2, wan suit = 3, wind suit = 4, dragon suit = 5
suit = 0;
rank = 0;
uid = 0;
card_name = "mahjongcard";
//only in hand and playable should card be selected
selectable = false;
//selected or not
selected = false;
//face up
face_up = false;
//face up sprite
front_spr = spr_bamboo1;
//back sprite
back_spr = spr_mahjong_back;
//if in player hand
in_player_hand = false;
//is there a potential triplet?
potential = false;
//is this a listening hand?
listening = false;

image_xscale = 1.5;
image_yscale = 1.5;

function Show()
{
	show = true;
}
function Hide()
{
	show = false;
}