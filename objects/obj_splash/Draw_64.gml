draw_set_alpha(amount_of_alpha);
draw_set_color(c_black);

draw_rectangle(0, 0, room_width, room_height, false);


draw_set_alpha(1);

draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_font(fnt_proggy);

draw_set_color(make_color_rgb(227, 94, 51));
draw_text_transformed(50, 50, "Ludum", 5, 5, 0);
draw_set_color(make_color_rgb(227, 139, 48));
draw_text_transformed(215, 50, "Dare", 5, 5, 0);
draw_set_color(make_color_rgb(250, 222, 55));
draw_text_transformed(350, 50, "41", 5, 5, 0);

draw_set_color(c_white);

draw_text_transformed(50, 125, "Tiberiusuciu Presents:", 2, 2, 0);

draw_set_color(c_lime);
draw_text_transformed(50, 150, "Soccer", 4, 4, 0);
draw_set_color(c_aqua);
draw_text_transformed(195, 150, "Turn", 4, 4, 0);


draw_set_color(c_white);

var reset_01 = "\"r\"";
var reset_02 = ": Reset Match";
var hardReset_01 = "\"h\"";
var hardReset_02 = ": Hard Reset (back to this page)";
var mute_01 = "\"m\"";
var mute_02 = ": Mute Music";
var leave_game_01 = "shift + escape";
var leave_game_02 = ": Close game :^("; 
var space_game_01 = "<space>";
var space_game_02 = ": Start Game!";

var purple = make_color_rgb(171, 0, 255);

draw_set_color(purple);
draw_text_transformed(980, 60, reset_01, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(1020, 60, reset_02, 2, 2, 0);

draw_set_color(purple);
draw_text_transformed(980, 110, mute_01, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(1020, 110, mute_02, 2, 2, 0);

draw_set_color(purple);
draw_text_transformed(980, 160, hardReset_01, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(1020, 160, hardReset_02, 2, 2, 0);
draw_set_color(purple);
draw_text_transformed(980, 210, leave_game_01, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(1155, 210, leave_game_02, 2, 2, 0);
draw_set_color(purple);
draw_text_transformed(980, 260, space_game_01, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(1070, 260, space_game_02, 2, 2, 0);



var text01 = "The theme was:"
var text02 = "Combine 2 Incompatible Genres";
var text03 = "I have mixed a sport game (soccer) with the element of turn-based game.\nPlay with a friend locally on the same machine.\nOne player controls the blue team, the other player controls the red team.\nThe game will switch back and forth between the blue and red teams.\nBy order, a character will be selected by the game in order to be given an action.\nActions are selected via your number keys (not number pad).\nOnce an action is selected, point and click with your mouse where you want to use said action.\nThe game will take care of the rest!\n\nI hope you enjoy this small multiplayer game, the idea is simple, but given more time,\nthere are many places where I can expand and improve.\nI would like to thank my parents and my supportive girlfriend for encouraging me to participate into this event.\n\nAlso, special mentions go to twitch users @ImDaveead and @SmithDev from my 48 twitch stream!\n\nMake sure to write to me on my Ludum Dare post, I would like to hear your opinion!\nAlso, here are my social media usernames:\n\nTwitter: @SuciuTiberius Twitch: @Tiberiusuciu\n\nThank you and I'm looking forward to LD42!";
draw_text_transformed(50, 200, text01, 2, 2, 0);
draw_set_color(c_red);
draw_text_transformed(50, 235, text02, 2, 2, 0);
draw_set_color(c_white);
draw_text_transformed(50, 305, text03, 2, 2, 0);