// ############### INPUTS ###############
// Determine left or right movement 
move_x = keyboard_check(vk_right) - keyboard_check(vk_left)
move_x *= move_speed;

// Check if jumping
var jump_pressed = keyboard_check_pressed(vk_space); // var makes the variable local to this event


// ############### CHECK FOR COLLISIONS ###############
// Check if standing on ground
is_grounded = place_meeting(x, y+2, obj_ground2);

//Check if touching a ladder
is_climbing = place_meeting(x, y, obj_ladder1); 


// ############### MOVEMENT ###############
// Climbing
if (is_climbing) {
	move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
	move_y *= climb_speed; 
}
else {
// Jumping
     if (is_grounded && jump_pressed) {
		 move_y = jump_speed;
	 }
	 else if (move_y < max_fall_speed) {
	 move_y += gravity_force; 
	 }
}
// ############### ACTUALLY MOVE THE PLAYER OBJECT ###############
move_and_collide(move_x, move_y, obj_ground2);



// ############### OUTSIDE ROOM ###############
if (y < -200 || y > room_height+200 || x < -20 || x > room_width +20) {
	room_restart(); //Restart room if object is outside the room
}








