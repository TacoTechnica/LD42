/// get_target_planet_atmosphere_density(x, y);
// What's the density of the atmosphere at this point in our target planet?
// 0: In space
// 1: At the surface.

var xa = argument0,
    ya = argument1;

var tp = get_target_planet();

if (tp == noone) return 0;


var distance = point_distance(xa, ya, tp.x, tp.y);
//sqr(xa - tp.x) + sqr(ya - tp.y);


var fraction = 1 - ((distance - tp._radius) / tp._atmosphereHeight);
//(distanceSqr - sqr(tp._radius)) / sqr(tp._atmosphereHeight);

fraction = clamp(fraction, 0, 1);

// Only have a density on the very surface. There is no atmosphere.
if (tp._planetStatus == PLANET_STATUS.DEAD) {
    if fraction == 1
        return 1;
    else
        return 0;
}

return fraction;
