xDone = false;
yDone = false;
targetX = -1;
targetY = -1;
obj_game.is_choosing_action = true;
obj_game.current_action = noone;
is_executing = false;
obj_game.steal_attempt = false;

if (obj_game.current_team == team.blue) {
			
	//obj_game.current_player.sprite_index = spr_blue;
	obj_game.current_player.sprite_index = spr_blue;
	obj_game.current_player.image_speed = 0;
	obj_game.current_player.image_index = 0;
			
	if (obj_game.current_player.hasBall) {
		obj_game.current_player.image_index = 2;
	}
			
	obj_game.current_team = team.red;
	with (obj_red) {
		if (player_id == obj_game.red_player_counter) {
			obj_game.current_player = id;
		}
	}
	//obj_game.current_player.sprite_index = spr_red_selected;
	obj_game.current_player.sprite_index = spr_red;
	obj_game.current_player.image_speed = 0;
	obj_game.current_player.image_index = 1;
			
	if (obj_game.current_player.hasBall) {
		obj_game.current_player.image_index = 3;
	}
	obj_game.blue_player_counter++;
	if (obj_game.blue_player_counter > 3) {
		obj_game.blue_player_counter = 0;
	}
}
else {
	//obj_game.current_player.sprite_index = spr_red;
	obj_game.current_player.sprite_index = spr_red;
	obj_game.current_player.image_speed = 0;
	obj_game.current_player.image_index = 0;
			
	if (obj_game.current_player.hasBall) {
		obj_game.current_player.image_index = 2;
	}
	obj_game.current_team = team.blue;
	with (obj_blue) {
		if (player_id == obj_game.blue_player_counter) {
			obj_game.current_player = id;
		}
	}
	// obj_game.current_player.sprite_index = spr_blue_selected;
	obj_game.current_player.sprite_index = spr_blue;
	obj_game.current_player.image_speed = 0;
	obj_game.current_player.image_index = 1;
			
	if (obj_game.current_player.hasBall) {
		obj_game.current_player.image_index = 3;
	}
	obj_game.red_player_counter++;
	if (obj_game.red_player_counter > 3) {
		obj_game.red_player_counter = 0;
	}
}