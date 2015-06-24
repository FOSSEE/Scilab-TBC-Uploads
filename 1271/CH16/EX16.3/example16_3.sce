clc 
// Given that 
n = 2.5e28 // no. of free electron in per meter cube
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 3 on page no. 16.15
printf("\n # PROBLEM 3 # \n")
printf("Standard formula used \n")
printf("1/2 * m*v^2 = E_0 \n ")
printf("E_0 = (h^2 /(8 * pi^2 * m))*(3 * pi^2 * n)^(2/3) * (1 / e)\n")
E = (h^2 / (8 * %pi^2 * m)) * (3 * %pi^2 * n)^(2/3) * (1 / e)
v = (h / (2 * %pi * m)) * (3 * %pi^2 * n)^(1/3)
printf("\n Fermi energy is %f eV.\n Speed of electron is %e m/sec.",E,v)
