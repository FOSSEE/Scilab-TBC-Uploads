clc 
// Given that
l = 1e-10 // length of box in m
m = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 20 on page no. 15.32
printf("\n # PROBLEM 20 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n p_n = n*h/(2*pi) \n")
n = 1 // for n=1
E1 = (n^2 * h^2) / (8 * m * l^2)
lambda1 =2*l
n = 2 // for n=2
E2 = (n^2 * h^2) / (8 * m * l^2)
lambda2 =2*l/2
n = 3 // for n=3
E3 = (n^2 * h^2) / (8 * m * l^2)
lambda3 =2*l/3
printf("\n Energy Eigen value of electron -\n For (n=1) is %e J.\n For (n=2) is %e J.\n For (n=3) is %e J. \nde-Broglie wavelength of electron -\n For (n=1) is %f A.\n For (n=2) is %f A. \n For (n=3) is %f A",E1,E2,E3,lambda1*1e10,lambda2*1e10,lambda3*1e10)
