/// enemy_fire_bullet(enemy, angle);

/// Constants
var bulletSpeed = 7;
var randomness = 0;
var bulletShipOffset = 18;

var enemy = argument0,
    angle = argument1;

var r = random(randomness * 2) - randomness;
angle += r;

var bullet = instance_create(
                    enemy.x + enemy._velX + lengthdir_x(bulletShipOffset, enemy.image_angle), 
                    enemy.y + enemy._velY + lengthdir_y(bulletShipOffset, enemy.image_angle), 
                    objBulletEnemy);

bullet._velX = /*enemy._velX + */ lengthdir_x(bulletSpeed, angle);
bullet._velY = /*enemy._velY + */ lengthdir_y(bulletSpeed, angle);
bullet.image_angle = angle;

play_sound_spatial(soundPew, enemy.x, enemy.y, 3);

return bullet;
