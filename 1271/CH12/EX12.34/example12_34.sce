clc 
// Given that
E = 4.18 // energy of alpha particle in Mev
n = 12 // no. of particle enter the chamber per sec
E_ = 40 // required energy of an ion pair in ev
e = 1.6e-19 // charge on an electron in C
// Sample Problem 34 on page no. 12.45
printf("\n # PROBLEM 34 # \n")
R = n * E * 10^6 // in eV
N = R / E_
i = N * e
printf("Standard formula used \n N = R / E_.\n")
printf("\n The current produced = %e Amp",i)
