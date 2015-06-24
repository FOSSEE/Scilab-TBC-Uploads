
clear
 clc
//to find speed of ball

// GIVEN:
//refer to figure 12-1
//compression in spring
d = 3.2e-2//in meters
//mass of ball
m = 12e-3//in Kg
//force constant of spring
k = 7.5//in N/cm

// SOLUTION:
//applying conservation of energy principle
//speed of ball
vm = d*sqrt((k*10^2)/m)//in m/s 

printf ("\n\n Speed of ball vm = \n\n %.1f m/s",vm)
