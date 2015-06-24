clc 
// Given that
lambda = 0.2e-10 // wavelength of x-ray in meter
theta = 45 // scattered angle in degree
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of an electron in kg
// Sample Problem 28 on page no. 14.32
printf("\n # PROBLEM 28 # \n")
printf("Standard formula used \n ")
printf(" delta_lambda = (h / (m * c) * (1 - cos(theta))) \n E = h*c*(1/lambda1 - 1/lambda2)\n")
delta_lambda = (h * (1 - cosd(theta))) / (m * c)
E = (h * c) * ((1 / lambda) - (1 / (lambda + delta_lambda)))
theta_ = 180 // for maximum
delta_lambda_ = (h * (1 - cosd(theta_))) / (m * c)
lambda_ = lambda + delta_lambda_
E_k = h*c*(1/lambda - 1/lambda_)
printf("\n Wavelength of x-ray is %f A.\n Maximum kinetic energy %e J.",lambda_ * 1e10,E_k)
                                                               
