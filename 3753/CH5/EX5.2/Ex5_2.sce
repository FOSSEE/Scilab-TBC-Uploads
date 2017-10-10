//Example 5.2, Page number 5.28

clc;clear;close

//variable declaration
d=50                //diameter
N_a=0.2             //Numerical aperture
lamda=1             //wavelength

//Calculations
N=4.9*(((d*10**-6*N_a)/(lamda*10**-6))**2)// unitless

//Result
printf("N = %.f ",N)
printf("\nFiber can support: %d guided modes",N)
printf("\nIn graded index fiber, No.of modes propagated inside the fiber = %.f only",(N/2))
