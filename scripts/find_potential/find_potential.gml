// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_potential(){
	order_list(player_list,player_xpos,player_ypos);
	order_list(playable_list,playable_xpos,playable_ypos);
	potential_pungs = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	potential_chows = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	potential_kongs = [
		[],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false, new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false),new PotentialHand([],false)],
		[false,  new PotentialHand([],false), new PotentialHand([],false), new PotentialHand([],false)]
	];
	//checking all potential chows, pungs and kongs based on player hands
	for (var i = 0 ; i < ds_list_size(player_list) ; i++){
		//checking for potential pung
		if (i<ds_list_size(player_list)-1 && player_list[|i].suit == player_list[|i+1].suit && player_list[|i].rank == player_list[|i+1].rank){
			potential_pungs[player_list[|i].suit][player_list[|i].rank].index_arr = [i,i+1];
			potential_pungs[player_list[|i].suit][player_list[|i].rank].is_potential = true;
			//show_debug_message("Potential Pung: "+mahjongHands[player_list[|i].suit][player_list[|i].rank]);
		}
		//checking for potential kong
		if (i<ds_list_size(player_list)-2 && player_list[|i].suit == player_list[|i+1].suit && player_list[|i+1].suit ==  player_list[|i+2].suit && player_list[|i].rank == player_list[|i+1].rank && player_list[|i+1].rank ==  player_list[|i+2].rank){
			potential_kongs[player_list[|i].suit][player_list[|i].rank].index_arr = [i,i+1,i+2];
			potential_kongs[player_list[|i].suit][player_list[|i].rank].is_potential = true;
			//show_debug_message("Potential Kong: "+mahjongHands[player_list[|i].suit][player_list[|i].rank]);
			
		}
		//checking for potential chow
		if (i<ds_list_size(player_list)-1 && player_list[|i].suit <= 3 && player_list[|i].suit == player_list[|i+1].suit){
			//adjacent straight
			if  (player_list[|i+1].rank-player_list[|i].rank == 1){
				//have 1 and 2, waiting for 3
				if(player_list[|i].rank == 1){
					potential_chows[player_list[|i].suit][3].index_arr = [i,i+1];
					potential_chows[player_list[|i].suit][3].is_potential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][3]);
				}
				//have 8 and 9, waiting for 7
				else if (player_list[|i+1].rank == 9){
					potential_chows[player_list[|i].suit][7].index_arr = [i,i+1];
					potential_chows[player_list[|i].suit][7].is_potential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][7]);
				}
				//two-side straight waiting, example: have 2 and 3, waiting for 1 and 4
				else {
					potential_chows[player_list[|i].suit][player_list[|i].rank-1].index_arr = [i,i+1];
					potential_chows[player_list[|i].suit][player_list[|i].rank-1].is_potential = true;
					potential_chows[player_list[|i+1].suit][player_list[|i+1].rank+1].index_arr = [i,i+1];
					potential_chows[player_list[|i+1].suit][player_list[|i+1].rank+1].is_potential = true;
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][player_list[|i].rank-1]);
					//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i+1].suit][player_list[|i+1].rank+1]);
				}
			}
			//interval straight, example have 1 and 3, waiting for 2
			if (player_list[|i+1].rank-player_list[|i].rank == 2){
				potential_chows[player_list[|i].suit][player_list[|i].rank+1].index_arr = [i,i+1];
				potential_chows[player_list[|i].suit][player_list[|i].rank+1].is_potential = true;
				//show_debug_message("Potential Chow: "+mahjongHands[player_list[|i].suit][player_list[|i].rank+1]);
			}
		}
	}
	for (var i = 0 ; i < ds_list_size(playable_list) ; i ++ ){
		if (potential_pungs[playable_list[|i].suit][playable_list[|i].rank].is_potential){
			playable_list[|i].potential = true;
			show_debug_message("Potential Pung: "+mahjong_hands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potential_pungs[playable_list[|i].suit][playable_list[|i].rank].index_arr));
			
		}
		if (potential_kongs[playable_list[|i].suit][playable_list[|i].rank].is_potential){
			playable_list[|i].potential = true;
			show_debug_message("Potential Kong: "+mahjong_hands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potential_kongs[playable_list[|i].suit][playable_list[|i].rank].index_arr));
			
		}
		if (potential_chows[playable_list[|i].suit][playable_list[|i].rank].is_potential){
			playable_list[|i].potential = true;
			show_debug_message("Potential Chow: "+mahjong_hands[playable_list[|i].suit][playable_list[|i].rank]+". Index of play list: "+string(potential_chows[playable_list[|i].suit][playable_list[|i].rank].index_arr));
		}
	}
}