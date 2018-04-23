if (sprite_index == spr_blue_kick || sprite_index == spr_red_kick) {
	is_kick_animation_done = true;
	audio_sound_pitch(snd_kick, random_range(.9, 1.1));
	audio_play_sound(snd_kick, 5, false);
	//obj_camera.apply_jitter = 30;
}