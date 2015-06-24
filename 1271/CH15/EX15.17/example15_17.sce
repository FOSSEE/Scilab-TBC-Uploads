clc 
// Given that
l = 2.5e-10 // width of box in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 17 on page no. 15.30
printf("\n # PROBLEM 17 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n")
n = 1 // for n=1
E = (n^2 * h^2) / (8 * m * l^2)
n = 2 // for n=2
E_ = (n^2 * h^2) / (8 * m * l^2)
printf("\n Energy of electron -\n For (n=1) is %e J.\n For (n=2) is %e J.",E,E_)
