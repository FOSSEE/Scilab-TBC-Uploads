clc 
// Given that
mu1 = 1.36 // refractive index for core
del_mu = 0.025 // relative refractive index

// Sample Problem  on page no. 255
printf("\n # PROBLEM 2 # \n")
mu2 = mu1*(1-del_mu) // refractive index of cladding
NA = mu1*sqrt(2*del_mu)
theta_0 = asin(NA) * (180 / %pi)
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Refractive index of cladding is %f. \n Numerical aperture is %f.\n Acceptance angle is %f degree.",mu2,NA,theta_0)
