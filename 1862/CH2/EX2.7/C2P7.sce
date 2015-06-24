
clear
 clc
//to find acceleration of partical
//to find velocity of partical when it leaves the tube

// GIVEN::

//length of the tube
x = 2.0//in m
//velocity of partical when it enters in the tube i.e.at t=0s
v0x = 9.5*10^5//in m/s
//time when the partical emerges out of the tube
t = 8.0*10^-7//in m/s

// SOLUTION:

//acceleration of the partical
//applying kinematic equations
ax = (x-(v0x*t))/(0.5*t^2)//in m/s^2
//velocity of the partical when it leaves the tube
//applying kinematic equations
vx = v0x + (ax*t)

printf ("\n\n Acceleration of the partical ax =\n\n %.1e m/s^2",ax);
printf ("\n\n Velocity of the partical when it leaves the tube vx =\n\n %.1e m/s",vx);
