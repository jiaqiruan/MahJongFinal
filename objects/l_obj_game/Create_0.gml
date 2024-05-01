randomize();
playable_hand = 13;
scoring_hand = 0;
deck_list = ds_list_create();
player_list = ds_list_create();
//whenever player want to play a hand, draw N card from deck
//if there is a chow, pung or kong, player can decide whether to do it
//after that, the set become fixed, and the rest of the playable hand go
//into the discard deck
playable_list = ds_list_create();

score_list = ds_list_create();

potential_list = ds_list_create();

discard_list = ds_list_create();



mahjongHands = [
	[],
	["", "Dot 1","Dot 2", "Dot 3", "Dot 4", "Dot 5", "Dot 6", "Dot 7", "Dot 8", "Dot 9" ],
	["", "Bamboo 1 ", "Bamboo 2", "Bamboo 3", "Bamboo 4", "Bamboo 5", "Bamboo 6", "Bamboo 7", "Bamboo 8", "Bamboo 9" ],
	["", "Wan 1", "Wan 2", "Wan 3", "Wan 4", "Wan 5", "Wan 6", "Wan 7", "Wan 8", "Wan 9" ],
	["", "East Wind", "South Wind", "West Wind", "North Wind"],
	["", "Red Dragon", "Green Dragon" , "White Dragon"]
];

potentialPungs = [
	[],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false],
	[false, false, false, false]
];
potentialChows = [
	[],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false],
	[false, false, false, false]
];
potentialKongs = [
	[],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false, false, false, false, false, false],
	[false, false, false, false, false],
	[false, false, false, false]
];

GenerateDeck();

ShuffleDeck();

DrawStartingHand();

