if global.life = 4
{
	draw_sprite(sBarra,0,65,13)
}
if global.life = 3
{
	draw_sprite(sBarra,1,65,13)
}
if global.life = 2
{
	draw_sprite(sBarra,2,65,13)
}
if global.life = 1
{
	draw_sprite(sBarra,3,65,13)
}
if global.life <1
{
	draw_sprite(sBarra,4,65,13)
	game_restart()
}

