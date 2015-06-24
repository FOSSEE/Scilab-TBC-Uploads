clc 
// Given that
mu_w = 1.33 // refractive index of water
mu_g = 1.54 // refractive index of glass
// Sample Problem 4 on page no. 3.24
printf("\n # PROBLEM 4 # \n")
Ip_1 = atan(mu_g / mu_w) * (180 / %pi)//calculation for polarizing angle for water
Ip_2 = atan(mu_w / mu_g) * (180 / %pi) // calculation for polarizing angle for glass
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n Polarizing angle for water to glass = %f degree,\n Polarizing angle for glass to water = %f degree",Ip_1,Ip_2)

