
clear
 clc
//to find change in gravitational potential energy

// GIVEN:
//mass of elevator
m = 920//in Kg
//height above the groung
h = 412//in meters
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//applying potential energy formula
//change in gravitational potential energy
delta_U = m*g*h//in J
delta_U1 = delta_U*10^-6//in MJ 

printf ("\n\n Change in gravitational potential energy delta_U = \n\n %.1e J",delta_U);
printf ("\n\n Change in gravitational potential energy delta_U1 = \n\n %.1f MJ",delta_U1);
