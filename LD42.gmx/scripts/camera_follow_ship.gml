/// camera_follow_ship(ship);

/// Constants
var maxDistance = 1 * view_hview/2 - 20;
var slowDownCurve = 0.1;

var ship = argument0;

var xa = ship.x;
var ya = ship.y;
var vx = ship._velX;
var vy = ship._velY;

var spdsqr = sqr(vx) + sqr(vy);
//var velAngle = point_direction(0,0, vx, vy);
var camExtraAngle = ship.image_angle;
var camDist = maxDistance * (1 - 1 / (slowDownCurve * spdsqr + 1));
if (ship._input_thrust < 0) {
    camDist = 0;
}

camera_follow(
        xa + lengthdir_x(camDist, camExtraAngle), 
        ya + lengthdir_y(camDist, camExtraAngle),
        -1 * ship.image_angle + 90
        );
