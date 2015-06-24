 
clc 
//Given that
mu_0 = 4*%pi*1e-7 // Permeability of free space
mu = mu_0 //Permeability of silver
sigma = 3.5e7 // conductivity in simens /m
delta = 0.03 // Skin depth penetration in mm

printf("Example 7.11")

f = 2/((delta*1e-3)^2*sigma*mu*2*%pi) // Calculation of skin depth penetration
printf("\n Required frequency is %d MHz.",f/1e6)
printf("\n The incident electromagnetic wave is the radio part of spectrum")
