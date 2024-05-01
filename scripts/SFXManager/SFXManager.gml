// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayBGM(){
	var ins_sound = audio_play_sound(theme_bgm, 1, true, 1);
	audio_sound_loop(ins_sound, true);
	var ins_sound2 = audio_play_sound(snd_bg_noise, 1, true, 0.5);
	audio_sound_loop(ins_sound2, true);
}
function PlayMahjongPlaySFX()
{
	audio_play_sound(snd_mahjong_play, 1, false, 1);
}