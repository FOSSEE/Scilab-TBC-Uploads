
clear
 clc
//to find velocity of center of mass at time t
//to find value of t

// GIVEN::

//refer to figure 9-33(a) from page no. 192
//radius of solid cylinder
R = 12//in cm
//mass of solid cylinder
M = 3.2//in kg
//initial angular velocity of solid cylinder
w0 = 15//in rev/s
//coefficient of kinetic friction between surface and cylinder
mew_k = 0.21
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-33(b) from page no. 192
w_0 = w0*2*%pi//in rad/rev
//applying newton's second law in x direction
//and applying rotational form of newton's second law 
//velocity of center of mass
vcm = (1/3*w_0*(R*10^-2))//in m/s
//value of t
t = vcm/(mew_k*g)//in seconds

printf ("\n\n Velocity of center of mass vcm = \n\n %.1f m/s",vcm);
printf ("\n\n Value of t = \n\n %.1f seconds",t);

