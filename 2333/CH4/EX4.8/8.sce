clc 
// Given that
mu_g = 1.55 // refractive index of glass
// Sample Problem 8 on page no. 215
printf("\n # PROBLEM 8 # \n")
Ip = atan(mu_g) * (180 / %pi)//calculation for polarizing angle for glass
I_r = 90 - Ip // Angle of refraction
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n Polarizing angle for glass is %d degree.\n Corresponding angle of refraction is %d degree.",Ip,ceil(I_r))
