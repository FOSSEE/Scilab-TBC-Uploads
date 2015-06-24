clear
clc
//to find density of oil

// GIVEN:
//refer to figure 15-6 from page no. 336
//height of water level above oil on one side
d = 12.3//in mm
//height of water level above oil on second side
a = 67.5//in mm
//density of water
rho_w = 1.000e3//in Kg/m^3 

// SOLUTION:
//equating pressure on both sides
//density of oil
rho = rho_w*((2*a)/((2*(a)+d)))//in Kg/m^3

printf ("\n\n Density of oil rho = \n\n %3i Kg/m^3",rho)
