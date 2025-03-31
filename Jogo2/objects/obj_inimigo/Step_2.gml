repeat(abs(velh))
{
	if (!place_meeting(x+sign(velh),y,obj_colisor))
	{
		x += sign(velh)
	}
	else
	{
		velh = -1
	
	}
}

repeat(abs(velv))
{
	if (!place_meeting(x,y + sign(velv),obj_colisor))
	{
		y += sign(velv)
	}
	else
	{
		velv = 0
		estado = "normal"
	}
}
