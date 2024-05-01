show_button = true;
function CheckOpenState(gamestate)
{
	if(gamestate == according_gamestate)
	{
		show_button = true;
	}
	else
	{
		show_button = false;
	}
	
	if(gamestate == "all")
	{
		show_button = true;
	}
}


