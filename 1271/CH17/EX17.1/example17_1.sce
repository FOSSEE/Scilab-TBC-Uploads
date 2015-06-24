clc 
// Given that 
a = 3e-10 // side of square lattice in m
h = 6.62e-34 // Planck constant in J sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 1 on page no. 17.18
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n ")
printf("E = P^2 / (2*m) \n P = h_cut*k \n")
p = (h / (2 * a))
E = (p^2 / (2 * m)) * (1 / e)
printf("\n Electron momentum value at the sides of first Brilloin zone is %e kg-m/sec.\n Enrgy of free electron is %f eV.",p,E)
