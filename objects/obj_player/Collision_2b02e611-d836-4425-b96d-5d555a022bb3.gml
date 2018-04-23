if (hasBall) {
	obj_game.red_team_score++;
	obj_game.resetPosition = true;

	obj_action_handler.apply_kick = false;
	obj_action_handler.apply_donothing = false;
	obj_action_handler.ball_catched = false;
	obj_action_handler.apply_move = false;
	obj_action_handler.xDone = false;
	obj_action_handler.yDone = false;
	obj_action_handler.targetX = -1;
	obj_action_handler.targetY = -1;
	obj_action_handler.is_executing = false;


	obj_game.last_scored = obj_game.current_player.team_color;
	audio_sound_pitch(snd_applaud, random_range(.9, 1.1));
	audio_play_sound(snd_applaud, 5, false);
	audio_sound_pitch(snd_goal, random_range(.9, 1.1));
	audio_play_sound(snd_goal, 5, false);
}