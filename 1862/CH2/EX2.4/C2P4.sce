
clear
 clc
//to find magnitude of position,velocity and acceleration

// GIVEN::
//time
t = 3//in seconds
//coefficients
A = 1.00//in m/s^2
B = -32.0//in m/s
C = 5.0//in m/s^2
D = 12.0//in m


// SOLUTION:

//for position vector
//coefficient in x direction for resultant vector 
rx = A*t^3 + B*t
//coefficient in y direction for resultant vector 
ry = C*t^2 + D

//for velocity vector
//coefficient in x direction for resultant vector 
//as v = dx/dt therefore differentiating rx and ry w.r.t t
vx = 3*A*t^2 + B
//coefficient in y direction for resultant vector 
vy =2* C*t

//for acceleration vector
//as a = dv/dt therefore differentiating rx and ry again w.r.t t
//coefficient in x direction for resultant vector 
ax = 6*A*t
//coefficient in y direction for resultant vector 
ay = 2*C
printf ("\n\n Position vector r =\n\n %1i m i + %1i m j',rx,ry);
printf ("\n\n Velocity vector v =\n\n %1i m/s i + %1i m/s j',vx,vy);
printf ("\n\n Acceleration vector a =\n\n %1i m/s^2 i + %1i m/s^2 j',ax,ay);
