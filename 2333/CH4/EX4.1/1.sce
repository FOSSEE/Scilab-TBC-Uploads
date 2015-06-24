clc  
// Given that
theta = 45 // Critical angle of light in a substance in degree
// Sample Problem 1 on page no. 213
printf("\n # PROBLEM 1 # \n")
mu = sin(45*%pi/180) // Refractive index of medium
Ip = atan(mu) * (180 / %pi) // by Brewster's law
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n  Brewster Angle = %f degree",Ip)
