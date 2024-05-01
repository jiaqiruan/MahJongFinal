/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(keyboard_check_pressed(ord("S"))){
	OrderPlayerHand();
}
if(keyboard_check_pressed(ord("D"))){
	DrawHands(1);
	UpdateUI();
}
if(keyboard_check_pressed(ord("F"))){
	DiscardHands();
	UpdateUI();
}
if(keyboard_check_pressed(ord("E"))){
	DrawPlayable(6);
	FindPotential();
	UpdateUI();
}
if(keyboard_check_pressed(vk_enter)){
	CheckPotential();
}
if(keyboard_check_pressed(ord("W"))){
	CheckWinning();
}