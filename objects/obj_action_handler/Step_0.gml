var mouse_press = mouse_check_button_pressed(mb_left);

if (instance_exists(obj_game)) {
	if (obj_game.current_action == actions.move) {
		
		if (mouse_press) {
			
			apply_move = true;
			if (obj_game.current_player.team_color == team.red) {
				if (obj_game.current_player.hasBall) {
					obj_game.current_player.sprite_index = spr_red_run_ball;
				}
				else {
					obj_game.current_player.sprite_index = spr_red_run;
				}
			}
			else {
				if (obj_game.current_player.hasBall) {
					obj_game.current_player.sprite_index = spr_blue_run_ball;
				}
				else {
					obj_game.current_player.sprite_index = spr_blue_run;
				}
			}
			if (!is_executing) {
				is_executing = true;
				obj_game.current_player.image_speed = 1.5;
				obj_game.current_player.image_xscale = sign(mouse_x - obj_game.current_player.x);
				if (obj_game.current_player.hasBall) {
					var modified_dst = obj_game.current_player.max_dst_with_ball;
					if (random(100) > obj_game.current_player.run_chance) {
						modified_dst = modified_dst * 2.5;
					}
					obj_game.current_player.new_dst = clamp(point_distance(obj_game.current_player.x, obj_game.current_player.y, mouse_x, mouse_y), 0, modified_dst);
				}
				else {
					var modified_dst = obj_game.current_player.max_dst;
					if (random(100) > obj_game.current_player.walk_chance) {
						modified_dst = modified_dst / 4;
					}
					obj_game.current_player.new_dst = clamp(point_distance(obj_game.current_player.x, obj_game.current_player.y, mouse_x, mouse_y), 0, modified_dst);
				}
				obj_game.current_player.new_direction = point_direction(obj_game.current_player.x, obj_game.current_player.y, mouse_x, mouse_y);
			}
		}
	}
	else if (obj_game.current_action == actions.kick) {
		if (mouse_press) {
			if (obj_game.current_player.hasBall && !is_executing) {
				is_executing = true;
				ball_catched = false;
				apply_kick = true;
				
				if (obj_game.current_player.team_color == team.red) {
					obj_game.current_player.sprite_index = spr_red_kick;
				}
				else {
					obj_game.current_player.sprite_index = spr_blue_kick;
				}
				obj_game.current_player.image_speed = .5;
				obj_game.current_player.image_xscale = sign(mouse_x - obj_game.current_player.x);
				
				var ball = instance_create_layer(obj_game.current_player.x, obj_game.current_player.y, "Instances", obj_ball);
				ball.new_dst = clamp(point_distance(ball.x, ball.y, mouse_x, mouse_y), 0, ball.max_dst);
				ball.new_direction = point_direction(ball.x, ball.y, mouse_x, mouse_y);
				ball.visible = false;
				ball.image_speed = 1;
			}
		}
	}
	else if (obj_game.current_action == actions.donothing) {
		apply_donothing = true;
	}
}

if (apply_move) {
	if (obj_game.current_player.new_dst > 0) {
		var distance_to_do_x = lengthdir_x(obj_game.current_player.spd, obj_game.current_player.new_direction);
		var distance_to_do_y = lengthdir_y(obj_game.current_player.spd, obj_game.current_player.new_direction);
		
		//show_debug_message("distance_to_do_x: " + string(distance_to_do_x));
		//show_debug_message(string(instance_exists(obj_boundaries)));		
		
		obj_game.current_player.x += distance_to_do_x;
		obj_game.current_player.y += distance_to_do_y;
		if (obj_game.current_player.is_ready_to_play_sound && (obj_game.current_player.prev_x != obj_game.current_player.x || obj_game.current_player.prev_y != obj_game.current_player.y)) {
			audio_sound_pitch(snd_run, random_range(.9, 1.1));
			audio_play_sound(snd_run, 5, false);
			obj_game.current_player.is_ready_to_play_sound = false;
			obj_game.current_player.alarm[0] = room_speed * .25;
		}
		obj_game.current_player.prev_x = obj_game.current_player.x;
		obj_game.current_player.prev_y = obj_game.current_player.y;
		obj_game.current_player.new_dst -= obj_game.current_player.spd;
	}
	else {
		apply_move = false;
		if (obj_game.current_player.team_color == team.red) {
			obj_game.current_player.sprite_index = spr_red;
		}
		else {
			obj_game.current_player.sprite_index = spr_blue;
		}
		obj_game.current_player.image_speed = 0;
		obj_game.current_player.image_index = 0;
		update_turn();
	}
}
if (apply_kick && obj_game.current_player.is_kick_animation_done) {
	if (!ball_catched && obj_ball.new_dst > 0) {
		obj_ball.visible = true;
		obj_ball.x += lengthdir_x(obj_ball.spd, obj_ball.new_direction);
		obj_ball.y += lengthdir_y(obj_ball.spd, obj_ball.new_direction);
		obj_ball.new_dst -= obj_ball.spd;
	}
	else {
		if (instance_exists(obj_ball)) {
			obj_ball.image_speed = 0;
		}
		obj_game.current_player.hasBall = false;
		apply_kick = false;
		ball_catched = false;
		obj_game.current_player.is_kick_animation_done = false;
		update_turn();
	}
}
if (apply_donothing) {
	apply_donothing = false;
	audio_sound_pitch(snd_donothing, random_range(.9, 1.1));
	audio_play_sound(snd_donothing, 5, false);
	update_turn();
}