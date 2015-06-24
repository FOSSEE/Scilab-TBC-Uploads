clear
clc
//to find angular displacement of grindstone 2.7 seconds later
//to find angular speed of grindstone 2.7 seconds later
// GIVEN:

//refer to the figure 8-7 from page no. 165
//constant angular acceleration of grindstone in +ve z direction
az = 3.2//in rad/s^2
//time initervalfor calculating angular acceleration and angular displacement 
t = 2.7//in seconds
//initially angular displacement
fi_0 = 0//in rad
//initially angular velocity in +ve z direction
w0z = 0//in rad/s

// SOLUTION:
//consider angular velocity in +ve z direction
//using kinematic equation of motion for rotational motion
//angular displacement of grindstone 2.7 seconds later
fi = fi_0 + (w0z*t) + (0.5*az*t^2)//in rad
//angular speed of grindstone 2.7 seconds later
wz = w0z + (az*t)//in rad/s

printf ("\n\n Angular displacement of grindstone 2.7 seconds later fi = \n\n %.1f rad",fi);
printf ("\n\n Angular speed of grindstone 2.7 seconds later wz = \n\n %.1f rad/s",wz);
