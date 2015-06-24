clc 
// Given that
lambda = 5086 // Wavelength of light in angstrom
s = 29.73 // specific rotation on deg/mm
// Sample Problem 22 on page no. 220
printf("\n # PROBLEM 22 # \n")
del_mu = lambda*1e-7*s/180 // Difference in indices 
printf("\n Standard formula used \n theta = pi*t*(mu_l-mu_r)/(lambda). \n")
printf("\n Difference in indices is %e.",del_mu)

