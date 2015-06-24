
clear
 clc
//to find potential energy stored in the spring

// GIVEN:
//foce constant of spring
k = 1.25e8//in N/m
//compression in spring
x = 5.6e-2//in meters

// SOLUTION:
//applying spring force formula
//potential energy stored in the spring
U = (1/2*k*x^2)//in J 
printf ("\n\n Potential energy stored in the spring U = \n\n %.2e J",U)
