clc 
// Given that
mu_w = 1.33 // refractive index of water
mu_g = 1.5 // refractive index of glass
// Sample Problem 5 on page no. 3.25
printf("\n # PROBLEM 5 # \n")
Ip = atan(mu_g / mu_w) * (180 / %pi) // calculation for Brewster angle
printf("\n Standard formula used \n Ip = atan(mu_g / mu_w) * (180 / pi). \n")
printf("\n Brewster angle = %f degree",Ip)

