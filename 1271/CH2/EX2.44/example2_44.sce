clc 
// Given that
lambda = 5.5e-7 // wavelength of light in meter
theta = %pi / 6 // semi-angle of cone in radian
// Sample Problem 44 on page no. 2.55
printf("\n # PROBLEM 44 # \n")
d = (1.22 * lambda) / (2 * sin(theta)) // calculation for the resolving limit of microscope 
printf("Standard formula used \n d*sin(theta)= 1.22*lamda. \n")
printf("\n The resolving limit of microscope = %e meter",d)
