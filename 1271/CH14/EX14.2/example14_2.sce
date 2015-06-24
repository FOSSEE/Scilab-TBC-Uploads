clc 
// Given that
P = 2e5 // radiated power in W
f = 98e6 // frequency in Hz 
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
// Sample Problem 2 on page no. 14.20
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n")
printf(" E = h*mu \n")
E = h * f
n = P / E
printf("\n Number of quanta emitted per sec is %e . ",n)
                                                               
