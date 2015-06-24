clc 
// Given that
P = 5e7 // power in watt
e = 33 // percentage efficiency of nuclear reactor
m1 = 2.01478 // mass of H(2) in a.m.u.
m2 = 4.00388 // mass of He(4) in a.m.u.
// Sample Problem 28 on page no. 12.42
printf("\n # PROBLEM 28 # \n")
printf(" Standard formula used \n")
printf(" del_E = del_m * c^2 \n efficiency = output/input \n")
m = (2 * m1) - m2
E = m * 931 * 1.6e-13
E_O = E * e /(2 * 100)
N = P / E_O
k = N * m1 / 6.023e26
M = k * 24 * 3600 
printf("\n Mass of deuterium consumed per day is %f kg.",M)
