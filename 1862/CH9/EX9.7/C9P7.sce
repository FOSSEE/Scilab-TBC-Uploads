
clear
 clc
//to find forces exerted on the ladder by the ground and by the wall


// GIVEN::

//refer to figure 9-23(a) from page no. 189
//length of ladder
L = 12//in meters
//mass of ladder
m = 45//in kg
//distance of upper end of ladder above the ground
h = 9.3//in meters
//mass of firefighter
M = 72//in kg
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-23(b) from page no. 189
//distance from the wall to the foot of ladder
a = sqrt(L^2 - h^2)//in meters
//considering equillibrium conditions
//finding normal reaction by ground
N = (M+m)*g//in N
//force exerted on ladder by the wall
Fw = (g*a*(M/2 + m/3))/h//in N
N = round(N)
Fw = round(Fw)
printf ("\n\n Distance from the wall to the foot of ladder a = \n\n %.1f m",a);
//answer is slightly different than book.But answer of scilab program is same as that of calculator
printf ("\n\n Forces exerted on the ladder by the ground N = \n\n %3i N",N);
//answer is slightly different than book.But answer of scilab program is same as that of calculator
printf ("\n\n Forces exerted on the ladder by the wall Fw = \n\n %3i N",Fw);
