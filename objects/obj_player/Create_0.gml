/// @description Create event

mv_range = 256;
player_id = 0;
is_goalie = false;
spd = 5;
hasBall = false;

new_direction = 0;
new_dst = 0;
max_dst = 256;
max_dst_with_ball = 128;


walk_chance = 75;
run_chance = 85;

kick_range = 256;

image_speed = 0;

is_kick_animation_done = false;
steal_chance = 10;

is_ready_to_play_sound = true;
prev_x = x;
prev_y = y;

enum team {
	red,
	blue
};

enum actions {
	move,
	kick,
	donothing
}
if (instance_exists(obj_game)) {
	team_color = noone;
	player_id = global.player_id;
	global.player_id++;
}