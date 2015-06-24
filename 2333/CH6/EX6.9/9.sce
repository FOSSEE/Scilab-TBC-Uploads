clc 
// Given that
mu1 = 1.466 // refractive index for core
mu2 = 1.46 // refractive index for cladding
lambda = 1200 // wavelength of light in nano meter
V = 2.405 // cut off parameter
// Sample Problem 9 on page no. 267
printf("\n # PROBLEM 9 # \n")
t = V*lambda*1e-9/(2*%pi*sqrt(mu1^2-mu2^2)) // maximum radius of fiber
theta_c = asin(mu2 / mu1) * (180 / %pi)
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Maximum radius allowed for fiber is %f micro meter \nCritical angle = %f degree. \n Numerical aperture = %f,\n Maximum incidence angle = %f degree.",t*1e6,theta_c,NA,theta_0)
