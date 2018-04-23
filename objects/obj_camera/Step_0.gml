/// @description Step Event

if (!obj_game.is_choosing_action && !obj_action_handler.apply_move && !obj_action_handler.apply_kick) {
	x = lerp(x, mouse_x, .04);
	y = lerp(y, mouse_y, .04);
	
	x = clamp(x, width / 2, room_width - width / 2);
	y = clamp(y, height / 2, room_height - height / 2);
}
if (instance_exists(obj_ball) && obj_action_handler.apply_kick) {
	x = lerp(x, obj_ball.x, .05);
	y = lerp(y, obj_ball.y, .05);
	
	x = clamp(x, width / 2, room_width - width / 2);
	y = clamp(y, height / 2, room_height - height / 2);
	
}
else if(instance_exists(obj_game.current_player)) {
	x = lerp(x, obj_game.current_player.x, .05);
	y = lerp(y, obj_game.current_player.y, .05);
	
	x = clamp(x, width / 2, room_width - width / 2);
	y = clamp(y, height / 2, room_height - height / 2);
}



/*
if (apply_jitter > 0) {
	x += random_range(-1.5, 1.5);	
	apply_jitter--;
} 
*/
