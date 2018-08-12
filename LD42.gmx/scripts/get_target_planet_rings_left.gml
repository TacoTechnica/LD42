/// get_target_planet_rings_left();

var planet = get_target_planet();

if (planet == noone) return -1;
if !instance_exists(planet._ringCourse) return -1;

return planet._ringCourse._ringCount - planet._ringCourse._ringsDone;
