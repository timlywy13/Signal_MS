/// @description Insert description here
// You can write your code in this editor

image_speed = oGame.game_speed; 
if instance_exists(oPlayer)
{
	x = oPlayer.x;
	y = oPlayer.y;
	instance_destroy();
}