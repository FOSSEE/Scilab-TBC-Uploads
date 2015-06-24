clc 
// Given that
k = 4 // maximum kinetic energy of electron in eV
w = 2.2 // work function of sodium in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 20 on page no. 14.27
printf("\n # PROBLEM 20 # \n")
printf("Standard formula used \n ")
printf(" E = (h * c) * (1 / lambda1 - 1 / lambda2) \n E = (h * c)/ lambda \n")
lambda_ = ((h * c) / (w * e)) 
lambda = (1 / ((((k * e)  / (h * c))) + (1 / lambda_)))
printf("\n Threshold wavelength is %d Angstrom.\n Incident electromagnetic wavelength is %f Angstrom",lambda_ * 1e10,lambda * 1e10)
                                                               
