if mouse_check_button_pressed(mb_left)
{
	if x < obj_inimigo.x{
			other.estado = "dano"
			other.hp -= dano
			atacou = true
		
	}
	if x > obj_inimigo.x
	{
			other.estado = "dano"
			other.hp -= dano
			atacou = true
	}
}
else
{
	atacou = false
}

if atacou = true
{
	obj_camera.shakevalue = 1
}
else
{
	obj_camera.shakevalue = 0
}

var _dano = instance_create_layer(other.x,other.y,"Dano",obj_popup)


