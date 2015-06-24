clc  

 
//given that
l = 1 // width of potential well in angstrom
n = 1 // order corresponding to ground state
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in Kg
printf("Example 2.21")
E = n^2*h^2/(8*m*(l*1e-10)^2) // Calculation of energy in Joule
E_eV = E/1.6e-19 // Calculation of energy in eV

printf("\n Energy of electron is %f eV.\n\n\n",E_eV)
// Answer in book is 37.74 eV angstrom
