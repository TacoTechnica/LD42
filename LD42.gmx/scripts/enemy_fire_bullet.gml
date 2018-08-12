/// enemy_fire_bullet(enemy, angle, velTarget);

/// Constants
var bulletSpeed = 7 * 0.6;
var randomness = 0;
var bulletShipOffset = 18;

var enemy = argument0,
    angle = argument1,
    velTarget = argument2; // Are we tracking the player's velocity as well?

var r = random(randomness * 2) - randomness;
angle += r;

var bullet = instance_create(
                    enemy.x + enemy._velX + lengthdir_x(bulletShipOffset, enemy.image_angle), 
                    enemy.y + enemy._velY + lengthdir_y(bulletShipOffset, enemy.image_angle), 
                    objBulletEnemy);

bullet._velX = /*enemy._velX + */ lengthdir_x(bulletSpeed, angle);
bullet._velY = /*enemy._velY + */ lengthdir_y(bulletSpeed, angle);

if (velTarget) {
    bullet._velX += objShip._velX;
    bullet._velY += objShip._velY;
}

bullet.image_angle = angle;

// Audio
/*
if (Gamestate._bulletSound != noone) {
    audio_stop_sound(Gamestate._bulletSound);
}
Gamestate._bulletSound = */
play_sound_spatial(soundPew, enemy.x, enemy.y, 3);

return bullet;
