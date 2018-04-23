var next_room = keyboard_check(vk_space);
var escape = keyboard_check(vk_escape);
var shift = keyboard_check(vk_shift);
var mute = keyboard_check_pressed(ord("M"));


if (start_fade_in && amount_of_alpha > .8) {
	amount_of_alpha -= .005;
}

if (next_room) {
	room_goto_next();
}

if (shift && escape) {
	game_end();
}
if (mute) {
	obj_bg_msc.muteHasBeenPressed = true;
}