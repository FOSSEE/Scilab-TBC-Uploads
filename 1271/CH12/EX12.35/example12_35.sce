clc 
// Given that
n = 10^8 // no. of electron per discharge counted by GM counter
r = 500 // counting rate in counts per minutes
e = 1.6e-19 // charge on an electron in C
// Sample Problem 35 on page no. 12.46
printf("\n # PROBLEM 35 # \n")
N = r / 60
i = N * n * e 
printf("Standard formula used \n i = N * n * e . \n")
printf("\n Average current in the circuit = %e Amp",i)
