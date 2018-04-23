if (muteHasBeenPressed) {
	muteHasBeenPressed = false;
	
	if (muteMusic) {
		audio_stop_sound(snd_bg_music);
	}
	else {
		audio_play_sound(snd_bg_music, 7, true);
	}
	
	muteMusic = !muteMusic;
}