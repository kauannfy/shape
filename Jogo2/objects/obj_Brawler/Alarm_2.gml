repeat(2){
    if sprite_index = sBrawlerEspada{
		if (obj_Brawler.image_xscale == 1)
		{
			instance_create_layer(x - 150, y + 5, "Dano", obj_particula, {sprite_index: sEfeito})
		}
		else
		{
			instance_create_layer(x + 150, y +5, "Dano", obj_particula, {sprite_index: sEfeito,image_xscale: -1})
		{
		}
		}
	}
}


alarm_set(2, 5)