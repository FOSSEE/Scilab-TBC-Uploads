clc 
// Given that
E1 = 3*10^5 // electric intensity when space between plates evacuated in V/m
E2 = 1*10^5 // electric intensity when space between plates is filled with dielectric in V/m
e_ = 8.85e-12 // electric permittivity of air in C^2/Nm^2
// Sample Problem 2 on page no. 9.11
printf("\n # PROBLEM 2 # \n")
printf(" Standard formula used \n")
printf(" E = E_-P/e_.\n\n ")
sigma = e_*(E1 - E2)
printf("The included charge density on the surface of the dielectric is %e C/m^2",sigma )
