clc 
// Given that
E = 1 // kinetic energy of proton in MeV
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of proton in kg
// Sample Problem 41 on page no. 14.37
printf("\n # PROBLEM 41 # \n")
printf("Standard formula used \n ")
printf(" E = 1/2 * m*v^2 \n")
v = sqrt(2 * E * 1.6e-13 / m)
printf("\n Velocity is %e m/sec.\n From the above result it is clear that the velocity of proton is nearly one twentieth of the velocity of light. So the relativistic calculation are not required.",v)
                                                               
