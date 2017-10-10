//Example number 2.3, Page number 2.33


clc;clear;close

// Variable declaration
d=1*10**-3 // in m
lamda=6000*10**-10 // in m
nd=0.01                  // difference between the refractive indices(n1 - n2)

// Calculation
phi=(2*%pi*d*nd)/lamda // radian

// Result
printf("phi=%.1f radian",phi)
printf("\n\nSince the phase difference should be with in 2pi radius, we get phi=4.169 rad.")
