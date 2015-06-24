

clc 
//Given that
E = 2 // Energy of accelerated electron in KeV
m = 9.1e-31 // Mass of electron in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.12")
lambda = h/sqrt(2*m*E*1e3*1.6e-19) // Calculation of velocity of moving electron
printf("\n Wavelength of electron is %e m.\n\n\n",lambda)
// Answer in book is 2.74e-12m
