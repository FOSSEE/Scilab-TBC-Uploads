clc 
// Given that
mu1 = 1.52 // refractive index for core
mu2 = 1.41 // refractive index for cladding
// Sample Problem 1 on page no. 5.15
printf("\n # PROBLEM 1 # \n")
theta_c = asin(mu2 / mu1) * (180 / %pi)
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Critical angle = %f degree. \n Numerical aperture = %f,\n Maximum incidence angle = %f degree.",theta_c,NA,theta_0)
