// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LDeckReposition(deck_given, xCenterPos, yCenterPos, spacing){
	
	//center the deck
	deck_length = ds_list_size(deck_given);
	start_offset_x = deck_length / 2;
	start_offset_x *= spacing;
	start_offset_x = -start_offset_x;
	
	for (var i = 0; i < deck_length; i++){
		deck_given[|i].x = xCenterPos+(i*spacing) + start_offset_x;
		deck_given[|i].y = yCenterPos;
	}
}
function LDeckRepositionCentered(deck_given, xPos, yPos, spacing){
	
	//center the deck
	deck_length = ds_list_size(deck_given);
	start_offset_x = deck_length / 2;
	start_offset_x *= spacing;
	start_offset_x = -start_offset_x;
	
	for (var i = 0; i < deck_length; i++){
		deck_given[|i].x = xPos+(i*spacing) + start_offset_x + screenCenterX;
		deck_given[|i].y = -yPos + screenCenterY;
	}
}

function LDeckRepositionTopMiddledByRows(deck_given, xPos, yPos, spacing, rowCount, rowYSpacing){
	
	//center the deck
	deck_length = ds_list_size(deck_given);
	
	if(deck_length < rowCount)
	{
		start_offset_x = deck_length / 2;
	}
	else
	{
		start_offset_x = rowCount / 2;
	}
	
	start_offset_x *= spacing;
	start_offset_x = -start_offset_x;
	start_offset_y = 0;
	xi = 0;
	
	for (var i = 0; i < deck_length; i++){
		
		if(xi == rowCount - 1)
		{
			start_offset_y += rowYSpacing;
			xi = 0;
		}
		
		deck_given[|i].x = xPos+(xi*spacing) + start_offset_x + screenCenterX;
		deck_given[|i].y = -yPos + start_offset_y + screenCenterY;
		
		xi++;
	}
}