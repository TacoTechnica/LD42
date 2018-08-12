///ship_fire_bullet(ship, angle);

/// Constants
var bulletSpeed = 20;
var randomness = 5;
var bulletShipOffset = 18;

var ship = argument0,
    angle = argument1;

var r = random(randomness * 2) - randomness;
angle += r;

var bullet = instance_create(
                    ship.x + ship._velX + lengthdir_x(bulletShipOffset, ship.image_angle), 
                    ship.y + ship._velY + lengthdir_y(bulletShipOffset, ship.image_angle), 
                    objBullet);

bullet._velX = ship._velX + lengthdir_x(bulletSpeed, angle);
bullet._velY = ship._velY + lengthdir_y(bulletSpeed, angle);
bullet.image_angle = angle;

// Audio
/*if (Gamestate._machineGunSound != noone) {
    audio_stop_sound(Gamestate._machineGunSound);
}
Gamestate._machineGunSound = */
audio_play_sound(soundMaschineGun,1,false);


return bullet;
