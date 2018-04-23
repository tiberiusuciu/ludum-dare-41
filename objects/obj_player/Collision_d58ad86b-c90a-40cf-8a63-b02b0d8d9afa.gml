if (other.team_color != team_color && (hasBall || other.hasBall) && obj_action_handler.apply_move && (obj_game.current_player == id || obj_game.current_player == other.id) && !obj_game.steal_attempt) {
	obj_game.steal_attempt = true;
	if (random(100) < steal_chance) {
		if (obj_game.current_player == id) {
			if (hasBall) {
				hasBall = false;
				if (team_color == team.red) {
					sprite_index = spr_red_run;
					image_speed = 1.5;
				}
				else {
					sprite_index = spr_blue_run;
					image_speed = 1.5;
				}
				
				audio_sound_pitch(snd_looseball, random_range(.9, 1.1));
				audio_play_sound(snd_looseball, 5, false);
					
					
				other.hasBall = true;
				if (other.team_color == team.red) {
					other.sprite_index = spr_red;
					other.image_index = 2;
					other.image_speed = 0;
				}
				else {
					other.sprite_index = spr_blue;
					other.image_index = 2;
					other.image_speed = 0;
				}
				audio_sound_pitch(snd_acquire, random_range(.9, 1.1));
				audio_play_sound(snd_acquire, 5, false);
			}
			else {
				hasBall = true;
				if (team_color == team.red) {
					sprite_index = spr_red_run_ball;
					image_speed = 1.5;
				}
				else {
					sprite_index = spr_blue_run_ball;
					image_speed = 1.5;
				}
				
				audio_sound_pitch(snd_acquire, random_range(.9, 1.1));
				audio_play_sound(snd_acquire, 5, false);
					
				other.hasBall = false;
				if (other.team_color == team.red) {
					other.sprite_index = spr_red;
					other.image_index = 0;
					other.image_speed = 0;
				}
				else {
					other.sprite_index = spr_blue;
					other.image_index = 0;
					other.image_speed = 0;
				}
				audio_sound_pitch(snd_looseball, random_range(.9, 1.1));
				audio_play_sound(snd_looseball, 5, false);
			}
		}
	}
}