//UI
	global.game = id;

	global.ButtonDepth = -9999;
	global.PanelDepth = -10000;

	screenCenterX = view_xview[0] + view_wview[0] / 2;
	screenCenterY = view_yview[0] + view_hview[0] / 2;
	
	wining_hands_array =
	[
		{
			name : "STRAIGHT",
			sprite : spr_straight,
			//m_score: 
		},
		{
			name : "STRAIGHT FLUSH",
			sprite : spr_straight_flush
		}
		//{
			//name: "PENG"
		//}
	]

	//playable list
	playable_deck_offset_x = 22;
	playable_deck_offset_y = 0;

	//deck list
	deck_offset_x = 22;
	deck_offest_y = 350;
	
	//player list
	player_deck_offset_x = 22;
	player_deck_offset_y = -200;

	//Spacing
	card_spacing = 50;
	
	//Card Scale
	card_scale_x = 1.5;
	card_scale_y = 1.5;
	
	function DrawCard()
	{
		//draw n cards, for now 1
		draw_hands(draw_amount);
		//entering discard state, disable multi-select player
		global.multi_select_player = false;
		player_list[|0].y -= 50;
		player_list[|0].selected = true;
		global.player_selected_card = player_list[|0];
		game_state = "discard";
		UpdateUI();
	}
	function DrawPlayable()
	{
		draw_playable(playable_amount);
		game_state = "play";
		UpdateUI();
	}
	function PlayCard()
	{
		global.multi_select_player = true;
		//play playable button
		if(keyboard_check_pressed(vk_enter)){
			var tmp_result = check_potential();
			switch(tmp_result){
				//nothing happen
				case 0:
					
					break;
				case 1:
					game_state = "draw";
					break;
				case 2: 
					global.multi_select_player = false;
					game_state = "discard";
					break;
				case 3:
					game_state = "draw2";
					break;
			}
		}
		discard_playable();
			game_state = "decision";
		UpdateUI();
	}
	function DiscardCard()
	{
		discard_selected();
		global.multi_select_player = true;
		game_state = "decision";
		UpdateUI();
	}
	function OpenShop()
	{
		
	}
//End UI


//keep track of game state
game_state = "decision";
game_score= 0;

straight_score = 1000;
kong_score = 400;
pung_score = 200;
chow_score = 100;

//determine winning hand helper
num_triplet = 0;
//template for all zero array up to 29
//
tmp_card_template = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

card_tracker =  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

randomize();

//whenever player want to play a hand, draw N card from deck
//if there is a chow, pung or kong, player can decide whether to do it
//after that, the set become fixed, and the rest of the playable hand go
//into the discard deck

//all decks 

//general deck
deck_list = ds_list_create();
//player's hand
player_list = ds_list_create();
//playable cards that can be use as chow, pung or kong
playable_list = ds_list_create();
//scoring hands goes into a separate space
score_list = ds_list_create();
//check potential triplets helpers
potential_list = ds_list_create();
//discard pile
discard_list = ds_list_create();

//array names for mahjong hands
mahjong_hands = [
	[],
	["", "Dot 1","Dot 2", "Dot 3", "Dot 4", "Dot 5", "Dot 6", "Dot 7", "Dot 8", "Dot 9" ],
	["", "Bamboo 1 ", "Bamboo 2", "Bamboo 3", "Bamboo 4", "Bamboo 5", "Bamboo 6", "Bamboo 7", "Bamboo 8", "Bamboo 9" ],
	["", "Wan 1", "Wan 2", "Wan 3", "Wan 4", "Wan 5", "Wan 6", "Wan 7", "Wan 8", "Wan 9" ],
	["", "East Wind", "South Wind", "West Wind", "North Wind"],
	["", "Red Dragon", "Green Dragon" , "White Dragon"]
];

//coordinates for all decks

//separation between cards
global.card_separation = 50;
draw_amount = 1;
playable_amount = 6;
total_score = 0;
//coordinate for general deck
general_xpos = 50;
general_ypos = 50;
//coordinate for player hands
player_xpos = 50;
player_ypos = 650;
//coordinate for discard list
discard_xpos = 50;
discard_ypos = 450;
//coordinate for playable list
playable_xpos = 50;
playable_ypos = 250;
//coordinate for scoring triplet
score_xpos = 50;
score_ypos = 850;



//helper boolean for multi-select

//by default, you can select multiple hands in player hands
global.multi_select_player = true;
global.player_selected_card = noone;

//by default, you can't select multiple hands in playable pool
global.multi_select_playable = false;
global.playable_selected_card = noone;





alarm[0] = 1;



