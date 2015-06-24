clc 
// Given that
mu1 = 1.6 // refractive index for core
mu2 = 1.5 // refractive index for cladding
// Sample Problem 2 on page no. 5.16
printf("\n # PROBLEM 2 # \n")
NA = sqrt(mu1^2 - mu2^2)//calculation for numerical aperture
theta_0 = asin(NA) * (180 / %pi)//calculation for maximum incidence angle
printf("Standard formula used \n NA=aqrt(mu1^2-mu2^2),\n sin(theta_)=NA. \n")
printf("\n Numerical aperture = %f.\n Maximum incidence angle = %f degree.",NA,theta_0)
