clc 
// Given that
mu1 = 1.45 // refractive index for core
mu2 = 1.40 // refractive index for cladding
mu = 1 // refractive index for air
// Sample Problem 5 on page no. 256
printf("\n # PROBLEM 5 # \n")
theta_c = asin(mu2 / mu1) * (180 / %pi) // critical angle in degree
theta_c_ = asin(mu/mu2) * (180 / %pi) // Acceptance angle in degree
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Critical angle at the core - cladding boundary is %f degree \n Critical angle at cladding - air boundary is %f degree",theta_c,theta_c_)
