if podeseratacado = true{
	global.life --;
	podeseratacado = false
}

if sprite_index = sBrawlerEspada{
	if x < obj_inimigo.x{
		obj_inimigo.x += 200
		obj_inimigo.y -= 70
		obj_inimigo.grav = 2
		obj_inimigo.estado = "dano"
		obj_inimigo.hp -= dano
		
	}
	else
	{
		obj_inimigo.x -= 200
		obj_inimigo.y -= 70
		obj_inimigo.grav = 2
		obj_inimigo.estado = "dano"
		obj_inimigo.hp -= dano
	}
}
