
velv += grav
if x < obj_Brawler.x{
	image_xscale =- 1
}
else
{
	image_xscale = 1
}
switch(estado)
{
	case "normal":
	sprite_index = sInimigo
	break
	
	case "dano":
	sprite_index = sInimigoDano
	break
}
if (hp <= 0)
{
	instance_destroy()
}
