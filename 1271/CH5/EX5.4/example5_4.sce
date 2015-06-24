clc 
// Given that
mu1 = 1.62 // refractive index for core
mu2 = 1.52 // refractive index for cladding
// Sample Problem 4 on page no. 5.17
printf("\n # PROBLEM 4 # \n")
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
printf("\n Standard formula used \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Numerical aperture = %f. \n Maximum incidence angle = %f degree.",NA,theta_0)
