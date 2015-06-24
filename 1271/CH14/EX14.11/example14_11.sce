clc 
// Given that
lambda = 6.2e-7 // threshold wavelength of photoelectron in first case in meter
lambda_ = 5e-7 // threshold wavelength of photoelectron in second case in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 11 on page no. 14.23
printf("\n # PROBLEM 11 # \n")
printf("Standard formula used \n ")
printf(" E = h*c/lambda \n")
w = ((h * c) / lambda) * (1 / e)
w_ = ((h * c) / lambda_) * (1 / e)
printf("\n Work function for wavelength %e angstrom is %f eV.\n Work function for wavelength %e angstrom is %f eV",lambda,w,lambda_,w_)
                                                               
