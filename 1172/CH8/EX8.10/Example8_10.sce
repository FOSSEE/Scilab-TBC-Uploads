clc
//Given that
R_e = 6.4e6 // radius of Earth in km
M_e = 6e24 // mass of Earth in kg
G = 6.67e-11 // universal gravitational constant
// sample problem 10 page No. 303
printf("\n\n\n # Problem 10 # \n")

printf("Standard formula used U_f - U_i = 1/2 * m *(u^2 - v^2)\n ")
h = 10 * R_e
v = sqrt (2 *h * G * M_e / (R_e * h))  // calculation of velocity required by mass to reach given height
printf ("\n Velocity required by mass is %e m/s.",v)

