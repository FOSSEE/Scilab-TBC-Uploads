clc 
// Given that
mu2 = 1.59 // refractive index for cladding
NA = 0.2 // Numerical aperture
mu_water = 1.33 // refractive index of water
del_mu = 0.025 // relative refractive index

// Sample Problem 3 on page no. 256
printf("\n # PROBLEM 3 # \n")
mu1 = sqrt(NA^2+mu2^2) // refractive index of cladding
NA_w = sqrt(mu1^2 - mu2^2)/mu_water // Numerical aperture for water
theta_0 = asin(NA_w) * (180 / %pi) // Acceptance angle of fiber in water
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Acceptance angle of fiber in water is %f degree.",theta_0)

