clc
// Given That
r = 1 // distance from lamp in meter
power = 100// power radiated by lamp in W
mu_not = 1.2566e-6 // universal constant
epsilon_not = 8.85e-12 // universal constant
//Sample Problem 15 Page No. 87
printf("\n # Problem 15 # \n ")
s = power /(4 * %pi * (r^2)) //calculation of intensity at a distance
ratio = sqrt(mu_not / epsilon_not) //calculation of a constant
E = sqrt (ratio * s) //calculation of Average value of intensity of electric field
 printf("Average value of intensity of electric field is %f V/m \n", E)


