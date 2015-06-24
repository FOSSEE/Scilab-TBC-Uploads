clc
// Given That
d = 1.5e11 // separation between earth and sun in meter
power_sun = 3.8e26// power radiated by sun in W
c = 3e8
//Sample Problem 7 Page No. 82
printf("\n # Problem 7 # \n ")
s = power_sun /(4 * %pi * (d^2)) //calculation of Energy received per unit surface area per unit time
p =  s / c // calculation of Pressure applied by sun radiations on earth
printf("Energy received per unit surface area per unit time is %f", s)
 printf("\n Pressure applied by sun radiations on earth is %e N/m^2 \n", p)

 

