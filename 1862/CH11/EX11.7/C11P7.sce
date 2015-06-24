
clear
 clc
//to find speed of body when it strikes the ground

// GIVEN::
//mass of body
m = 4.5//in kg
//height from which body is dropped
h = 10.5//in meters
//acceleration due to gravity
g = 9.80//in m/s^2

// SOLUTION:
//using work-energy principle
//speed of body when it strikes the ground
v = sqrt(2*g*h)//in m/s
printf ("\n\n Speed of body when it strikes the ground v = \n\n %.1f m/s",v);
