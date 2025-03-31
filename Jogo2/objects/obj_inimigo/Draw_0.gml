draw_self()

if (hp < maxHP)
{
	draw_healthbar(x-60,y - 150,x+60,y-130, (hp/maxHP)*100,c_black,c_red,c_green,0,true,true)
}