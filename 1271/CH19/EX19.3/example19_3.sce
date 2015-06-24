clc 
// Given that 
d = 1e-3 // diameter of wire in m
T1 = 4.2 // temperature in K
T2 = 7.18 // temperature in K
H_ = 6.51e4 // critical magnetic field at 0 K
// Sample Problem 3 on page no. 19.14
printf("\n # PROBLEM 3 # \n")
printf("Standard formula used \n ")
printf(" H = H_0 * (1 - (T / T_c)^2) \n I = 2*pi*r*H \n")
r = d / 2
Hc = H_ * (1 - (T1 / T2)^2)
Jc = (2 * %pi * r * Hc) / (%pi * r^2)
printf("\n Critical current density is %e A/m^2",Jc)
