clc 
// Given that
E1 = 3.2e-18 // minimum energy possible for a particle entrapped in a one dimensional box in J
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 21 on page no. 15.32
printf("\n # PROBLEM 21 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n")
E1 = E1 / e // in eV
n = 2 // for n=2
E2 = n^2 * E1
n = 3 // for n=3
E3 = n^2 * E1
n = 4 // for n=4
E4 = n^2 * E1
printf("\n Energy Eigen values -\n For (n=2) for %f eV.\n For (n=3) is %f eV.\n For (n=4) is %f eV.",E2,E3,E4)
