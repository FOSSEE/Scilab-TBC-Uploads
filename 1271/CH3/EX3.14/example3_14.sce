clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
mu_e1 = 1.5 // refractive index for extraordinary light in first case
mu_o1 = 1.55 // refractive index for ordinary light in first case
mu_e2 = 1.57 // refractive index for extraordinary light in second case
mu_o2 = 1.55 // refractive index for ordinary light in second case
// Sample Problem 14 on page no. 3.28
printf("\n # PROBLEM 14 # \n")
t1 = lambda / (4 * (mu_o1 - mu_e1))
t2 = lambda / (4 * (mu_e2 - mu_o2))
 // calculation for thickness of plate of quartz
 printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e)) ")
printf("\n Thickness of plate of quartz in first case = %e meter,\n And thickness of plate of quartz in second case = %e meter",t1,t2)
