clc 
// Given that
f = 12e6 // oscillator frequency of cyclotron in Hz
r = 0.53 // radius of dee in meter
e = 1.6e-19 // charge on an electron in Coulomb
// Sample Problem 30 on page no. 12.43
printf("\n # PROBLEM 30 # \n")
printf(" Standard formula used \n")
printf(" f = B*q/(2*pi*m) \n")
B = (2 * %pi * f * 2 * 1.67e-27) / e
printf("\n Value of magnetic induction needed to accelerate deuteron in it is %f T.",B)
