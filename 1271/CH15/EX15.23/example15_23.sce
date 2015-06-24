clc 
// Given that
l = 10e-10 // width of box containing electron in m
E = 9.664e-17 // energy of electron in J
M = 0.001 // mass of glass marble in kg
l_ = 0.2 // width of box containing marble in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 23 on page no. 15.33
printf("\n # PROBLEM 23 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n p_n = n*h/(2*pi) \n")
// For electron
n = 1 // for n=1
E1 = (n^2 * h^2) / (8 * m * l^2)
E2 = 2^2* E1
E3 = 3^2 * E1
// For glass marble
E1_ = h^2/(8*M*l_^2)
E2_ = 2^2 * E1_
E3_ = 3^2 *E1_
printf("\n Energy levels of electron \n For (n=1) is %e J.\n For (n=2) is %e J.\n For (n=3) is %e J.\n Energy levels of marble \n For (n=1) is %e J.\n For (n=2) is %e J.\n For (n=3) is %e J.",E1,E2,E3,E1_,E2_,E3_)
printf("\n It is clear that the levels in case of marble are very small and are nearly zero. So it is not possible to measure them experimentally.")
