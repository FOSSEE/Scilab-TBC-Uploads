clear
clc
//to find angular acceleration of grindstone
//to find total angle turned through during slowing down of grindstone

// GIVEN:
//refer to problem 8-3 and from page no. 165
//refer to the figure 8-7 from page no. 165
//initial angular speed of grindstone
w0z = 8.6//in rad/s
//final angular speed of grindstone
//as grindstone comes to rest
wz = 0//in rad/s
//time interval in which grindstone comes to rest
t = 192//in seconds
//initial angular displacement of grindstone
fi_0 = 0//in rad

// SOLUTION:
//consider angular velocity in +ve z direction
//using kinematic equation of motion for rotational motion
//angular acceleration of grindstone
az = (wz-w0z)/t//in rad/s^2
//total angle turned through during slowing down of grindstone
fi = fi_0 + (w0z*t) + ((1/2)*az*(t^2))//in rad
fi = nearfloat("pred",823)

printf ("\n\n Angular acceleration of grindstone az = \n\n %.3f rad/s^2",az);
printf ("\n\n Total angle turned through during slowing down of grindstone fi = \n\n %.3i rad",fi);
