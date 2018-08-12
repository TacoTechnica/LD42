#define get_target_planet_ring_course_x
/// get_target_planet_ring_course_x();

var planet = get_target_planet();

if (planet == noone) return -1;
if !instance_exists(planet._ringCourse) return -1;
return planet._ringCourse.x;

#define get_target_planet_ring_course_y
/// get_target_planet_ring_course_y();

var planet = get_target_planet();

if (planet == noone) return -1;
if !instance_exists(planet._ringCourse) return -1;

return planet._ringCourse.y;
