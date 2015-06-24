clc
    
// Given that
mu1 = 1.42 // refractive index for core
mu2 = 1.40 // refractive index for cladding
// Sample Problem 1 on page no. 254
printf("\n # PROBLEM 1 # \n")
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
theta_deg = floor(theta_0)
theta_fract = theta_0 - floor(theta_0)
theta_min = theta_fract*60
printf("\n Standard formula used \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n  \n Numerical aperture = %f,\n Maximum incidence angle = %d degree %d min.",NA,theta_deg,theta_min)

