///get_target_planet_death_timer();

var planet = get_target_planet();
if (planet == noone) return -1;

if (!is_inside_goo_radius(planet.x, planet.y)) return -1;

return planet._deathTimer
