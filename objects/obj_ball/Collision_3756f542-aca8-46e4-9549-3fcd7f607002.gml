//show_debug_message("Does he have the ball at collide? " + string(other.hasBall));
//show_debug_message("Does the current player has ball?: " + string(obj_game.current_player.hasBall));

if (obj_action_handler.apply_kick) {
	if (other.id != obj_game.current_player) {
		obj_action_handler.ball_catched = true;
		other.hasBall = true;
		other.image_index = 2;
		//show_debug_message("DESTROYING BALL on kick collide");
		audio_sound_pitch(snd_acquire, random_range(.5, 1.5));
		audio_play_sound(snd_acquire, 5, false);
		instance_destroy();
	}
}
else if (!other.hasBall) {
	if (obj_action_handler.apply_move) {
		if (other.team_color == team.red) {
			other.sprite_index = spr_red_run_ball;
		}
		else {
			other.sprite_index = spr_blue_run_ball;
		}
	}
	else {
		other.image_index = 2;
	}
	obj_action_handler.ball_catched = true;
	other.hasBall = true;
	audio_sound_pitch(snd_acquire, random_range(.5, 1.5));
	audio_play_sound(snd_acquire, 4, false);
	instance_destroy();
}