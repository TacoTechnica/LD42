/// camera_follow(x, y, angle);

// Moves the camera to those coordinates, using our special camera effect!

/// Constants
var factor = 0.2;

var target_x = argument0,
    target_y = argument1,
    target_angle = argument2;


// Offset our target so that our x and y targets are actually in the center!
target_x -= view_wview / 2;
target_y -= view_hview / 2;

view_xview += (target_x - view_xview) * factor;
view_yview += (target_y - view_yview) * factor;

view_angle = target_angle;

// SHAKE
var s = Gamestate._cameraShake;
var shakeX = random(2*s) - s;
var shakeY = random(2*s) - s;

view_xview += shakeX;
view_yview += shakeY;
