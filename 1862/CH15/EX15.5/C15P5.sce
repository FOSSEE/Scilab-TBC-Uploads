clear
clc
//to find surface tension of liquid

// GIVEN:
//refer to figure 15-15(a) on page no. 343
//upward force
p = 3.45e-3//in N
//length of wire
d = 4.85//in cm
//linear mass density
mew = 1.75e-3//in Kg/m
//acceleration due to gravity
g = 9.7835//in m/s^2

// SOLUTION:
//refer to figure 15-15(a) on page no. 343
//using equilibrium condition
//surface tension of liquid
Gamma = (p-(mew*(d*10^-2)*g))/(2*d*(10^-2))//in N/m
//taking d in meters

printf ("\n\n Surface tension of liquid Gamma  = \n\n %.3f N/m",Gamma)
