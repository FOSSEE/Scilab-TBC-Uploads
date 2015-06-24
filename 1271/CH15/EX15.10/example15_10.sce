clc 
// Given that
v = 3e7 // speed of electron in m/sec 
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
// Sample Problem 10 on page no. 15.28
printf("\n # PROBLEM 10 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n m = m_0/(1-(v^2/c^2))^1/2 \n")
delta_p = m * v / sqrt(1 - (v/c)^2)
delta_x = h / (4 * %pi * delta_p)
printf("\n Uncertainty in determining the position is %e m.",delta_x)
