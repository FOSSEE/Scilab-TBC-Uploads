
clc 
// Given that
l = 4e-10 // width of box in m
E = 9.664e-17 // energy of electron in J
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 22 on page no. 15.33
printf("\n # PROBLEM 22 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n p_n = n*h/(2*pi) \n")
n = 1 // for n=1
E1 = (n^2 * h^2) / (8 * m * l^2)
N = sqrt(E / E1)
p = ((N) * h) / (2 * l)
printf("\n Order of exited state is %d.\n Momentum of electron is %e kg-m/sec.",N,p)
