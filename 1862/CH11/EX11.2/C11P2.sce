
clear
 clc
//to find work done by the chid

// GIVEN::

//refer to figure 11-9(a) from page no. 233
//mass of sled
m = 5.6//in kg
//distance by which sled is pushed horizontally
s = 12//in meters
//coefficient of kinetic friction
mew_k = 0.20
//angle made by the rope with horizontal
fi = 45//in degrees
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 11-9(b) from page no. 233
//using newton's second law of motion
//we get three equations and three unknowns
A = [cosd(fi) -1 0;sind(fi) 0 1;0 1 -mew_k]
B = [0; m*g; 0]
c = A\B
//force applied by the child
F = c(1)//in N
//frictional force 
f = c(2)//in N
//normal reaction
N = c(3)//in N
//work done by the child
W = F*s*cosd(fi)//in J


F = round(F)
W = round(W)
printf ("\n\n Force applied by the child F = \n\n %2i N",F);
printf ("\n\n Work done by the child W = \n\n %3i J",W);
