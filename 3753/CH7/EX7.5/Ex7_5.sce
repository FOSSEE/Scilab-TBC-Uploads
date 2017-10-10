//Example number 7.5, Page number 7.15

clc;clear;close

// Variable declaration
a=3.615 // in m
r=1.278// in m
h=1// in m
k=1// in m
l=1// in m

// Calculations
a=(4*r)/sqrt(2)// in m
d=a/(sqrt(h^2+k^2+l^2))// in m

// Result
printf("a = %.3f Angstroms",a)
printf("\nd = %.3f Angstroms",d)
