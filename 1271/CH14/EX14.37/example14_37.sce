clc 
// Given that
lambda = 1e-10 // wavelength in m
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of electron in kg
m_ = 1.67e-27 // mass of neutron in kg
// Sample Problem 37 on page no. 14.35
printf("\n # PROBLEM 37 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n")
v = h / (m * lambda)
E = h^2 / (2 * m * lambda^2)
E_ = h^2 / (2 * m_ * lambda^2)
printf("\n Energy for electron is %f eV.\n Energy for neutron is %f eV.",E / e,E_ / e)
                                                               
