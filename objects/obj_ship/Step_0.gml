/// @description Ship control manager

if (keyboard_check(vk_up) || keyboard_check(foward)) {
	motion_add(image_angle, fwd_speed);
}

if (keyboard_check(vk_down) || keyboard_check(back)) {
	motion_add(image_angle, -fwd_speed);
}

if (keyboard_check(vk_left) || keyboard_check(left)) {
	image_angle += turn_speed;
}

if (keyboard_check(vk_right) || keyboard_check(right)) {
	image_angle -= turn_speed;
}

if (keyboard_check_pressed(fire)) {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
}

move_wrap(true, true, sprite_width/2);