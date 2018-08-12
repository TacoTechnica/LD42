/// ship_hit();

if (objShip._invulnurable) return 0;

objShip._health --;
objShip._hitTimer = 0;

objShip.alarm[0] = 20;
objShip._invulnurable = true;

if (objShip._health == 1) {
    display_text("Warning: Health Critical!", c_red, 120 + 60);
    audio_play_sound(soundWarning, 3, false);
}
