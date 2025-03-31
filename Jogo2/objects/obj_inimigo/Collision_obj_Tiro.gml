if levarkb = true{
	if x < obj_Brawler.x{
		x -= 50
		y -= 20
		grav = 2
		levarkb = false
		estado = "dano"
		hp -= obj_Tiro.dano
	}
else
	{
		x += 50
		y -= 20
		grav = 2
		levarkb = false
		estado = "dano"
		hp -= obj_Tiro.dano
	}
}