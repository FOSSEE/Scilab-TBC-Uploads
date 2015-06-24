clc 
// Given that
mu = 1.5 // refractive index of glass
// Sample Problem 1 on page no. 3.23
printf("\n # PROBLEM 1 # \n")
Ip = atan(mu) * (180 / %pi) // by brewster's law
r = 90 - Ip // calculation for angle of refraction
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n Brewster angle = %f degree\n Angle of refraction = %f degree",Ip,r)
