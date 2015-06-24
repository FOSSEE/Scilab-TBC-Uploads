clc 
// Given that
V = 12.4e3 // voltage in V
i = 2e-3 // current in amp
e = 1.6e-19 // charge on an electron in C
// Sample Problem 7 on page no. 20.9
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n ")
printf("I = ne \n 1/2*m*v^2 = eV \n")
n = i / e
v = 0.593e6*sqrt(V)
printf("\n Number of electrons striking the target per sec is %e.\n Speed of electrons is %e m/sec.",n,v)
