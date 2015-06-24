clc 
// Given that
d = 0.0064 // diameter of fiber in cm
mu1 = 1.53 // refractive index for core
mu2 = 1.39 // refractive index for clad
L = 90 // length of fiber in cm
mu_0 = 1 // refractive index of air
// Sample Problem 6 on page no. 5.17
printf("\n # PROBLEM 6 # \n")
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
N1 = L / (d * sqrt((mu1 / (mu_0 * sin(theta_0 * (%pi / 180))))^2 - 1))
N2 = L / (d * sqrt((mu1 / (mu_0 * sin(theta_0 * (%pi / 360))))^2 - 1))
printf("\n Standard formula used \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n N = L / (d * sqrt((mu / (mu_0 * sin(theta_0 * (pi / 180))))^2 - 1)). \n ")
printf("\n Numerical aperture = %f.\n Acceptance angle = %f degree. \n Number of reflections at maximum incidence = %f. \n Number of reflections in second case = %f. ",NA,theta_0,N1,N2)
