if not instance_exists(target_) exit;
var shake = power(shakevalue,2)*shakepower
x += random_range(-shake,shake)
y += random_range(-shake,shake)

x = lerp(x,target_.x, 0.1)
y = lerp(y, target_.y - height_/4, 0.1)
camera_set_view_pos(view_camera[0], x-width_/2,y-height_/2)
camera_set_view_angle(view_camera[0],random_range(-shake,shake) * 0.5)

if (shakevalue >0) shakevalue -=0.1