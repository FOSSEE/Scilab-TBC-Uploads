
clear
 clc
//to find spring compression

// GIVEN::
//mass of body
m = 3.63//in kg
//speed of block
v = 1.22//in m/s
//force constant for spring
k = 135//in 

// SOLUTION:
//using work-energy principle
//spring compression
d = v*sqrt(m/k)//in meters
d1 = d*10^2//in 
printf ("\n\n Spring compression d = \n\n %.3f m",d);
printf ("\n\n Spring compression d = \n\n %.1f cm",d1);
