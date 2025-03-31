if podeseratacado = false && sprite_index = sBrawler or sprite_index = sBrawlerCorre or sprite_index = sBrawlerPula or sprite_index = sBrawlerPulaC{
	cooldown += 1
	podeseratacado = true
	alarm_set(1, 20)
}

alarm_set(1, 50)

