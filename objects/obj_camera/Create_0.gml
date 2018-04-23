/// @description Create Event

target = noone;

if (instance_exists(obj_ball)) {
	target = obj_ball;
	x = target.x;
	y = target.y;
}
else if(instance_exists(obj_game.current_player)) {
	x = obj_game.current_player.x;
	y = obj_game.current_player.y;
}

width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

apply_jitter = 0;