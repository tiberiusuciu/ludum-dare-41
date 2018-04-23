randomize();

/// @description Create Event

red_team_score = 0;
blue_team_score = 0;
current_team = choose(team.red, team.blue);
global.player_id = 0;
global.players = noone;
current_player = noone;
is_choosing_action = true;
current_action = noone;
blue_player_counter = 0;
red_player_counter = 0;
resetPosition = false;
last_scored = noone;
steal_attempt = false;

blueCounter = 1;
redCounter = 1;

audience_sprites[0] = spr_audience_01;
audience_sprites[1] = spr_audience_02;
audience_sprites[2] = spr_audience_03;
audience_sprites[3] = spr_audience_04;
audience_sprites[4] = spr_audience_05;
audience_sprites[5] = spr_audience_06;
audience_sprites[6] = spr_audience_07;
audience_sprites[7] = spr_audience_08;
audience_sprites[8] = spr_audience_09;
audience_sprites[9] = spr_audience_10;


// Spawning reds
if (current_team == team.red) {
	with (obj_spawning_pads_red_attack) {
		obj_game.current_player  = instance_create_layer(x, y, "Instances", obj_red);
		// obj_game.current_player.sprite_index = spr_red_selected;
		obj_game.current_player.sprite_index = spr_red;
		obj_game.current_player.image_speed = 0;
		obj_game.current_player.image_index = 3;
		obj_game.current_player.hasBall = true;
		obj_game.current_player.player_id = 0;
		global.players[team.red, global.player_id] = obj_game.current_player;
		global.player_id++;
		other.red_player_counter++;
	}
}
else {
	with (obj_spawning_pads_red_defense) {
		var player =  instance_create_layer(x, y, "Instances", obj_red);
		player.player_id = 0;
		global.players[team.red, global.player_id] = player;
		
		global.player_id++;
	}
}

with (obj_spawning_pads_red) {
	var player  = instance_create_layer(x, y, "Instances", obj_red);
	player.player_id = other.redCounter;
	global.players[team.red, global.player_id] = player;
	global.player_id++;
	other.redCounter++;
}
	
with (obj_spawning_pads_red_goal) {
	var player =  instance_create_layer(x, y, "Instances", obj_red);;
	player.is_goalie = true;
	player.player_id = other.redCounter;
	global.players[team.red, global.player_id] = player;
	global.player_id++;
	other.redCounter++;
}

global.player_id = 0;

// Spawning blues
if (current_team == team.blue) {
	with (obj_spawning_pads_blue_attack) {
		//show_debug_message("Test");
		obj_game.current_player  = instance_create_layer(x, y, "Instances", obj_blue);
		// obj_game.current_player.sprite_index = spr_blue_selected;
		obj_game.current_player.sprite_index = spr_blue;
		obj_game.current_player.image_speed = 0;
		obj_game.current_player.image_index = 3;
		obj_game.current_player.image_xscale = -1;
		obj_game.current_player.hasBall = true;
		obj_game.current_player.player_id = 0;
		global.players[team.blue, global.player_id] = obj_game.current_player;
		global.player_id++;
		other.blue_player_counter++;
	}
}
else {
	with (obj_spawning_pads_blue_defense) {
		var player = instance_create_layer(x, y, "Instances", obj_blue);
		player.image_xscale = -1;
		obj_game.current_player.player_id = 0;
		global.players[team.blue, global.player_id] = player;
		global.player_id++;
	}
}

with (obj_spawning_pads_blue) {
	var player = instance_create_layer(x, y, "Instances", obj_blue);
	player.player_id = other.blueCounter;
	player.image_xscale = -1;
	other.blueCounter++;
	global.players[team.blue, global.player_id] = player;
	global.player_id++;
}
	
with (obj_spawning_pads_blue_goal) {
	var player =  instance_create_layer(x, y, "Instances", obj_blue);;
	player.is_goalie = true;
	player.player_id = other.blueCounter;
	player.image_xscale = -1;
	other.blueCounter++;
	global.players[team.blue, global.player_id] = player;
	global.player_id++;
}


//show_debug_message(global.players);