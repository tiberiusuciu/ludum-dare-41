var escape = keyboard_check(vk_escape);
var shift = keyboard_check(vk_lshift);
var r = keyboard_check_pressed(ord("R"));
var h = keyboard_check_pressed(ord("H"));
var mute = keyboard_check_pressed(ord("M"));

if (r) {
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

	audio_sound_pitch(snd_reset, random_range(.9, 1.1));
	audio_play_sound(snd_reset, 5, false);

	if(instance_exists(obj_ball)) {
		instance_destroy(obj_ball);
	}

}

if (h) {
	room_goto_previous();
}

if (escape && shift) {
	game_end();
}

if (mute) {
	obj_bg_msc.muteHasBeenPressed = true;
}