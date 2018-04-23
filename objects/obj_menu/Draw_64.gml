draw_set_font(fnt_proggy);
if (instance_exists(obj_game)) {
	
	if(obj_game.is_choosing_action) {
		draw_set_alpha(.5);
		draw_sprite(spr_ui_action, 0, 30, 30);
		draw_set_alpha(1);
		draw_set_color(c_white);
		
		draw_sprite_part_ext(spr_ui_buttons, 0, 0, 0, 64, 64, 50, 37, .5, .5, c_white, 1);
		draw_text_transformed(85, 45, ": Move", 2, 2, 0);
		if (obj_game.current_player.hasBall) {
			draw_sprite_part_ext(spr_ui_buttons, 0, 64, 0, 64, 64, 50, 77, .5, .5, c_white, 1);
			draw_text_transformed(85, 85, ": Kick", 2, 2, 0);
		}
		else {
			draw_sprite_part_ext(spr_ui_buttons, 0, 256, 0, 64, 64, 50, 77, .5, .5, c_white, 1);
			draw_set_color(c_gray);
			draw_text_transformed(85, 85, ": Kick", 2, 2, 0);
			draw_set_color(c_white);
		}
		draw_sprite_part_ext(spr_ui_buttons, 0, 128, 0, 64, 64, 50, 117, .5, .5, c_white, 1);
		draw_text_transformed(85, 125, ": Do Nothing", 2, 2, 0);
	}
	else {
		draw_set_alpha(.5);
		draw_sprite(spr_ui_action, 0, 30, 30);
		draw_set_alpha(1);
		draw_set_color(c_white);
		
		draw_sprite_part_ext(spr_ui_buttons, 0, 192, 0, 64, 64, 47, 67, .75, .75, c_white, 1);
		draw_text_transformed(98, 84, ": Cancel", 2, 2, 0);
		draw_sprite_part_ext(spr_ui_buttons, 0, 320, 0, 64, 64, 201, 67, .75, .75, c_white, 1);
		draw_text_transformed(248, 84, ": Select", 2, 2, 0);
	}
}

draw_sprite_part_ext(spr_teams_score, 0, 0, 0, 64, 64, 358, 30, 1, 1, c_white, .75);
draw_sprite_part_ext(spr_teams_score, 0, 64, 0, 64, 64, 358, 94, 1, 1, c_white, .75);

if (obj_game.blue_team_score > 9) {
	draw_text_transformed(373, 52, string(obj_game.blue_team_score), 3, 3, 0);
}
else {
	draw_text_transformed(383, 52, string(obj_game.blue_team_score), 3, 3, 0);
}
if (obj_game.red_team_score > 9) {
	draw_text_transformed(373, 114, string(obj_game.red_team_score), 3, 3, 0);
}
else {
	draw_text_transformed(383, 114, string(obj_game.red_team_score), 3, 3, 0);
}