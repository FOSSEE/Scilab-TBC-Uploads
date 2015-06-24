clc 
// Given that 
t = 0 // temperature in K
E = 10 // Fermi energy of electron in eV
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 1 on page no. 16.14
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n")
printf("1/2 * m*v^2 = E_0 \n")
E_ = E * 3 / 5
v = sqrt(2 * E_ * e / m)
printf("\n Average energy of electron is %f eV.\n Speed of electron is %e m/sec.",E_,v)
