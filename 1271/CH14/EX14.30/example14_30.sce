clc 
// Given that
v = 50 // potential differece in volt
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of an electron in kg
// Sample Problem 30 on page no. 14.33
printf("\n # PROBLEM 30 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n 1/2*m*v^2 = eV \n")
lambda =  h  / sqrt(2 * m * v * e)
printf("\n de-Broglie wavelength is %f Angstrom.",lambda * 1e10)
                                                               
