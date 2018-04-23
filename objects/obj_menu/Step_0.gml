if (instance_exists(obj_game)) {
	
	var move = keyboard_check_pressed(ord("1"));
	var kick = keyboard_check_pressed(ord("2"));
	var nothing = keyboard_check_pressed(ord("3"));
	var escape = keyboard_check(vk_escape);

	if ((move || kick || nothing) && obj_game.is_choosing_action) {
		//audio_sound_pitch(snd_select, random_range(.9, 1.1));
		//audio_play_sound(snd_select, 5, false);
		if (move) {
			obj_game.current_action = actions.move;
			obj_game.is_choosing_action = false;
		}
		else if (kick && obj_game.current_player.hasBall) {
			obj_game.current_action = actions.kick;
			obj_game.is_choosing_action = false;
		}
		else if (nothing) {
			obj_game.current_action = actions.donothing;
			obj_game.is_choosing_action = false;
		}
		else {
			audio_sound_pitch(snd_deny, random_range(.9, 1.1));
			audio_play_sound(snd_deny, 5, false);
		}
	}
	if (escape && !obj_action_handler.is_executing && (obj_game.current_action == actions.move || obj_game.current_action == actions.donothing || obj_game.current_action == actions.kick)) {
		obj_game.current_action = noone;
		obj_game.is_choosing_action = true;
		//audio_sound_pitch(snd_select, random_range(.9, 1.1));
		//audio_play_sound(snd_select, 5, false);
	}
	
}
