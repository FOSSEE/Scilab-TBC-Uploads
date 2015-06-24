clc 
// Given that
lambda1 = 40e-12 // minimum wavelength in first case in m
lambda2 = 1e-10 // minimum wavelength in second case in m
// Sample Problem 10 on page no. 20.10
printf("\n # PROBLEM 10 # \n")
printf("Standard formula used \n ")
printf("lambda_min = 12400/V \n")
V1 = 12400e-10 / lambda1
V2 = 12400e-10 / lambda2
printf("\n Applied voltage to get wavelength of %e meter is %f KV. \n Applied voltage to get wavelength of %e meter is %f KV.",lambda1,V1/10^3,lambda2,V2/10^3)
