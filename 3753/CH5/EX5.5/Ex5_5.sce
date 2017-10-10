//Example 5.5, Page number 5.29

clc;clear;close

// variable declaration
a=50 //unitless
n1=1.53 //unitless
n2=1.50 //unitless
lamda=1             // wavelength

// Calculations
N_a=(n1**2-n2**2)   // Numerical aperture
V=((2*%pi*a)/lamda)*N_a**(1/2) // V number

// Result
printf("V number = %.2f",V)
printf("\nmaximum no.of modes propagating through fiber = %.f",V)
