// Calculation of fraction of atoms with energy equal to or greater than 1eV at temperatures
clc
E = 1 // energy in electron volt
e = 1.6e-19 // charge on electron
k = 1.38e-23 // constant
t1 = 300 // temperature in K
t2 = 1500 // temperature in K
printf("\n Example 2.2")
printf("\n\n Part A:")
n_N = exp(-(e/(k*t1)))
printf("\n Fraction of atoms with energy equal to or greater than 1eV at temperature %d K is %.2e ",t1,n_N) // numerical value of answer in book is 2e-17
printf("\n\n Part B:")
n_N = exp(-(e/(k*t2)))
printf("\n Fraction of atoms with energy equal to or greater than 1eV at temperature %d K is %.2e ",t2,n_N) // numerical value of answer in book is 4.3e4


