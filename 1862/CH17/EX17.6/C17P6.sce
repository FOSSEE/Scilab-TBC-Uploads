clear
clc
//to find value of acceleration due to gravity

// GIVEN:
//radius of disk
R = 10.2//in cm
//period
T = 0.784//in seconds

// SOLUTION
//refer to problem 17-5
//acceleration due to gravity
g = (6*(%pi^2)*(R*10^-2))/(T^2)//in m/s^2

printf ("\n\n Value of acceleration due to gravity g = \n\n %.2f m/s^2",g)
