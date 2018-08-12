/// play_sound_spatial(sound, x, y, priority);
var sound = argument0,
    xa = argument1,
    ya = argument2,
    priority = argument3;
    
return audio_play_sound_at(sound, xa, ya, 0, 400, 1280, 1, false, priority);
