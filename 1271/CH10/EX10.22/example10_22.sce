clc 
// Given that
q = 1.6e-19 // charge on a proton in C
d = 1e-10 // distance of a point from proton in m
d_ = 2e-11 // distance of another point from proton in m
e0 = 8.85e-12 // permittivity of space
// Sample Problem 22 on page no. 10.44
printf("\n # PROBLEM 22 # \n")
v = (1 / (4 * %pi * e0)) * (q / d)//calculation for potential at first point
E = -q * v//calculation for energy at first point in J
delta_v = (1 / (4 * %pi * e0)) * q * ((1 / d_) - (1 / d))//calculation for potential difference between points
printf("Standard formula used \n V=(1/(4*pi*e_))*q/r,\n E=-(1/(4*pi*e_))*q^2/r.\n")
printf(" Potential energy at first point = %f eV.\n Potential difference between points = %f V.",E/q,delta_v)
