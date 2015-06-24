clc 
// Given that
lambda = 0.144e-10 // wavelength of x-ray in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of an electron in kg
// Sample Problem 27 on page no. 14.31
printf("\n # PROBLEM 27 # \n")
printf("Standard formula used \n ")
printf(" delta_lambda = (h / (m * c) * (1 - cos(theta))) \n E = h*c*(1/lambda1 - 1/lambda2)\n")
theta = 180 // for maximum shift
delta_lambda = (h * (1 - cosd(theta))) / (m * c)
E = (h * c) * ((1 / lambda) - (1 / (lambda + delta_lambda)))
printf("\n Maximum Compton shift is %f A.\n Kinetic energy is %f KeV.",delta_lambda * 1e10,E / 1.6e-16)
                                                               
