clc 
// Given that
l = 1e-10 // width of box in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.63e-34 // Planck constant in J-sec
// Sample Problem 19 on page no. 15.31
printf("\n # PROBLEM 19 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n p_n = n*h/(2*pi) \n")
n = 1 // for n=1
p1 = (n * h) / (2 * l)
E = (n^2 * h^2) / (8 * m * l^2)
n = 2 // for n=2
p2 = (n * h) / (2 * l)
E_ = (n^2 * h^2) / (8 * m * l^2)
printf("\n Energy of electron -\n For (n=1) is %e J.\n For (n=2) is %e J.\n Momentum of electron -\n For (n=1) is %e kg-m/sec.\n For (n=2) is %e kg-m/sec.",E,E_,p1,p2)
