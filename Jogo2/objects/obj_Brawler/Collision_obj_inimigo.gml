if podeseratacado = true{
	global.life --;
	podeseratacado = false
}

if sprite_index = sBrawlerEspada{
	if x < obj_inimigo.x{
		other.x += 200
		other.y -= 70
		other.grav = 2
		other.estado = "dano"
		other.hp -= dano
		
	}
	else
	{
		other.x -= 200
		other.y -= 70
		other.grav = 2
		other.estado = "dano"
		other.hp -= dano
	}
}
