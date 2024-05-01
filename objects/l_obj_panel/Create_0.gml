panel_opened = false;
current_data = [];

function OpenPanel(data)
{
	id.panel_opened = true;
	show_debug_message(array_length(data));
	current_data = data;
}

function ClosePanel()
{
	id.panel_opened = false;
}

