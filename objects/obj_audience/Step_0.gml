depth = -y;

if (instance_exists(obj_ball)) {
	image_xscale = sign(obj_ball.x - x);
}
else {
	image_xscale = sign(obj_game.current_player.x - x);
}