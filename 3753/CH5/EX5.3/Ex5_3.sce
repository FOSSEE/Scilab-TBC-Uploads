//Example 5.3, Page number 5.29

clc;clear;close

// variable declaration
d=50                // diameter
n1=1.450// unitless
n2=1.447// unitless
lamda=1             // wavelength

// Calculations
N_a=(n1**2-n2**2)   // Numerical aperture
N=4.9*(((d*10**-6*N_a)/(lamda*10**-6))**2)// Numerical aperture

// Results
printf("Numerical aperture = %.5f",N_a)
printf("\nNo. of modes that can be propogated = %.f",N)
