clc 
// Given that
mu = 1.732 // refractive index of glass
// Sample Problem 6 on page no. 3.25
printf("\n # PROBLEM 6 # \n")
Ip = atan(mu) * (180 / %pi) // by Brewster's law
r = 90 - Ip// calculation for angle of refraction
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n Angle of incidence = %f degree\n Angle of refraction = %f degree",Ip,r)
