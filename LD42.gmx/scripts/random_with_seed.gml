/// random_with_seed(seed, x);
// Gets a random value from a given seed

var seed = argument0,
    val  = argument1;

var prevSeed = random_get_seed();
random_set_seed(seed);
var result = random(val);
random_set_seed(prevSeed);

return result;
