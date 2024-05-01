// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DetermineCard(){
	//dot suit = 1, bamboo suit = 2, wan suit = 3, wind suit = 4, dragon suit = 5
	sprite_index = spr_mahjong_tileset;
	switch(suit){
		//dot
		case 1:
			switch(rank){
				case 1:
					card_name = "Dot 1";
					image_index = 1;
					break;
				case 2:
					card_name = "Dot 2";
					image_index = 2;
					break;
				case 3:
					card_name = "Dot 3";
					image_index = 3;
					break;
				case 4:
					card_name = "Dot 4";
					image_index = 4;
					break;
				case 5:
					card_name = "Dot 5";
					image_index = 5;
					break;
				case 6:
					card_name = "Dot 6";
					image_index = 6;
					break;
				case 7:
					card_name = "Dot 7";
					image_index = 7;
					break;
				case 8:
					card_name = "Dot 8";
					image_index = 8;
					break;
				case 9:
					card_name = "Dot 9";
					image_index = 9;
					break;
			}
			break;
		//bamboo
		case 2:
			switch(rank){
				case 1:
					card_name = "Bamboo 1";
					image_index = 10;
					break;
				case 2:
					card_name = "Bamboo 2";
					image_index = 11;
					break;
				case 3:
					card_name = "Bamboo 3";
					image_index = 12;
					break;
				case 4:
					card_name = "Bamboo 4";
					image_index = 13;
					break;
				case 5:
					card_name = "Bamboo 5";
					image_index = 14;
					break;
				case 6:
					card_name = "Bamboo 6";
					image_index = 15;
					break;
				case 7:
					card_name = "Bamboo 7";
					image_index = 16;
					break;
				case 8:
					card_name = "Bamboo 8";
					image_index = 17;
					break;
				case 9:
					card_name = "Bamboo 9";
					image_index = 18;
					break;
			}
			break;
		//Wan
		case 3:
			switch(rank){
				case 1:
					card_name = "Wan 1";
					image_index = 19;
					break;
				case 2:
					card_name = "Wan 2";
					image_index = 20;
					break;
				case 3:
					card_name = "Wan 3";
					image_index = 21;
					break;
				case 4:
					card_name = "Wan 4";
					image_index = 22;
					break;
				case 5:
					card_name = "Wan 5";
					image_index = 23;
					break;
				case 6:
					card_name = "Wan 6";
					image_index = 24;
					break;
				case 7:
					card_name = "Wan 7";
					image_index = 25;
					break;
				case 8:
					card_name = "Wan 8";
					image_index = 26;
					break;
				case 9:
					card_name = "Wan 9";
					image_index = 27;
					break;
			}
			break;
		//Wind
		case 4:
			switch(rank){
				case 1:
					card_name = "East Wind";
					image_index = 28;
					break;
				case 2:
					card_name = "South Wind";
					image_index = 29;
					break;
				case 3:
					card_name = "West  Wind";
					image_index = 30;
					break;
				case 4:
					card_name = "North Wind";
					image_index = 31;
					break;
			}
			break;
		case 5:
			switch(rank){
				case 1:
					card_name = "Red Dragon";
					image_index = 34;
					break;
				case 2:
					card_name = "Green Dragon";
					image_index = 32;
					break;
				case 3:
					card_name = "White Dragon";
					image_index = 33;
					break;
			}
			break;
	}
}