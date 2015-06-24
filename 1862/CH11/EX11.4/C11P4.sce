
clear
 clc
//to find work done by gravity
//to find work done by the spring
//to find work done by the hand


// GIVEN::

//refer to figure 11-15(a) from page no. 237
//mass of block
m = 6.40//in kg
//distance streched by spring
d = 0.124//in meters
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 11-8(b)and 11-5(c) from page no. 237
//applying equillibrium condition in y direction
//force constant of spring
k = m*g/d//in N/m
//work done by gravity
Wg = m*g*d//in J
//work done by the spring
Ws = (-1/2)*k*d^2//in J
//-ve sign as force and displacement are in opposite directions
//work done by the hand
//intergrating force in y direction
Wh = m*g*(-d)+(1/2)*k*(-d)^2//in J
k = round(k)
printf ("\n\n Force constant of spring k = \n\n %3i N/m",k);
printf ("\n\n Work done by gravity Wg = \n\n %.2f J",Wg);
printf ("\n\n Work done by the spring Ws = \n\n %.2f J",Ws);
printf ("\n\n Work done by the hand Wh = \n\n %.2f J",Wh);
