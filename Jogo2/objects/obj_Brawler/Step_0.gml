var _dir = keyboard_check(ord("D"))
var _esq = keyboard_check(ord("A"))
var _baixo = keyboard_check(ord("S"))
var _pulo = keyboard_check_pressed(vk_space)
var _dash = keyboard_check_pressed(ord("Q"))


if not mouse_check_button(mb_left)
{
	dashduration = max(dashduration - 1,0)
	velh = (_dir - _esq) * vel
	velv += grav
	if (dashduration >0) velv = 0

	/////// Pular
	if (place_meeting(x, y + 1, obj_colisor))
	{
		pulos = maxpulos
	}
	if (pulos>0) && (_pulo)
	{
		pulos -=1
		velv = pular
	}

	if keyboard_check(ord("D"))
	{
		estado = "correno"
	}

	else
	{
		estado = "parado"
	}
	if (_esq)
	{
		estado = "correno"
		image_xscale = -1
	}

	if (_dir)
	{
		estado = "correno"
		image_xscale = 1
	}

	if (_baixo)
	{
		grav = 1.5
	}
	else
	{
		grav = 0.3
	}
	if (_dash)
	{
		estado = "dashando"
		dashduration = 10
		velh = image_xscale * dashspd
	}

	//////// No ar
	if (!place_meeting(x +80 , y + 50, obj_colisor))
	{
		estado = "pulano"
	}

	if (!place_meeting(x +80 , y + 50, obj_colisor))
	{
		if keyboard_check(ord("D"))
		{
			estado = "pulanocorreno"
		}
		if (_esq)
		{
			estado = "pulanocorreno"
			image_xscale = -1
		}
	
	}
}

else
{
	estado = "atacano"
}
//// Sprites

switch(estado)
{
	case "parado":
	sprite_index = sBrawler
	break
	
	case "correno":
	sprite_index = sBrawlerCorre
	break
	
	case "dashando":
	sprite_index = sBrawlerDash
	break
	
	case "pulano":
	sprite_index = sBrawlerPula
	break
	
	case "pulanocorreno":
	sprite_index = sBrawlerPulaC
	break
	
	case "atacano":
	sprite_index = sBrawlerEspada
	break
}

if sprite_index = sBrawlerEspada{
	podeseratacado = false	
}


if pode_atacar = true{
	timer = 0
	if mouse_check_button_pressed(mb_left){
		var direcao = point_direction(x,y,mouse_x,mouse_y)
		instance_create_layer(x, y, "Instances",obj_Ataque,{image_angle: direcao})
		pode_atacar = false
	}
}
else
{
	timer +=1
	if timer = velocidadeatk
	{
		pode_atacar = true
	}
}

if pode_atirar = true{
	timer2 = 0
	if mouse_check_button_pressed(mb_right){
		var tiro = instance_create_layer(x, y, "Instances",obj_Tiro)
		tiro.speed = 20
		tiro.direction = point_direction(x,y,mouse_x,mouse_y)
		tiro.image_angle = tiro.direction
		pode_atirar = false
	}
}
else
{
	timer2 +=1
	if timer2 = velocidadetiro
	{
		pode_atirar = true
	}
}
////bbb
