
clc 
//Given that
lambda = 0.5// wavelength of electron in angstrom
m = 9.1e-31 // Mass of electron in Kg
h = 6.62e-34 // Plank constant
q = 1.6e-19 // charge on electron in coulomb
printf("Example 1.19")
V = h^2/(2*m*q*(lambda*1e-10)^2) // Calculation of velocity of moving electron
printf("\n Applied voltage on electron is %f V.\n\n\n",V)
// Answer in book is 601.6 Volt
