/// star_renderer_render_chunk(chunkX, chunkY, chunkWidth, chunkHeight, parallax);

// constants
var maxStarDensity = 20;
var minStarDensity = 3;

var cx = argument0,
    cy = argument1,
    cw = argument2,
    ch = argument3,
    p  = argument4; // Parallax depth. (How "far" we are)

var xpos = cx * cw,
    ypos = cy * ch;

/*
var deltaX = p * view_xview,
    deltaY = p * view_yview;
xpos += deltaX;
ypos += deltaY;
*/

var startSeed = cx * 696969 * cy; // totally not a random number

var starCount = random_with_seed(startSeed++, maxStarDensity - minStarDensity) + minStarDensity;
for(var i = 0; i < starCount; i++) {
    var sx = random_with_seed(startSeed++, cw);
    var sy = random_with_seed(startSeed++, ch);
    var starIndex = floor(random_with_seed(startSeed++, sprite_get_number(sprStars)));
    draw_sprite_ext(sprStars, starIndex, xpos + sx, ypos + sy, 1 - p + 0.1, 1 - p + 0.1, 0, c_white, draw_get_alpha());
}

// Reset the random seed so we can go on!
random_set_seed(current_time);

