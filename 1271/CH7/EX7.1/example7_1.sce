clc 
// Given that
E = 1.024e-3 // total energy of particle in J
T = 2 * %pi // time period of S.H.M. in sec
x = 0.08 * sqrt(2) // distance of partile in meter
t = %pi / 4 // time in second
// Sample Problem 1 on page no. 7.22
printf("\n # PROBLEM 1 # \n")
A = x / sin((2 * %pi * t) / T)
M = (E * T^2) / (2 * %pi^2 * A^2)
printf("\n Standard formula used \n A = x / sin((2 * pi * t) / T). \n M = (E * T^2) / (2 * pi^2 * A^2). \n")
printf("\n Amplitude = %f meter,\n Mass of particle = %f g",A,M/1e-3)
