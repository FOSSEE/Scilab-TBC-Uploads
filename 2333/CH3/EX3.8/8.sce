clc 
// Given that
lambda = 6000 // wavelength of light in angstrom
e = 0.3 // Width of slit in mm
m = 1 // Order for first dark band
n = 3/2 // Order for first bright band
// Sample Problem 8 on page no. 143
printf("\n # PROBLEM 8 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta_d = m*asin(lambda*1e-10/(e*1e-3)) // Calculation of angle in radian
theta_b = n*asin(lambda*1e-10/(e*1e-3)) // Calculation of angle in radian
printf("\n First dark band is formed at angle %e rad. \n First bright band is formed at angle %e rad.",theta_d,theta_b)
