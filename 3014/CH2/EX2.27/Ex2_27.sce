clc 

 
//given that
l = 1e-8 // width of potential well in cm
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in Kg
printf("\nExample 2.27")
E_1 = (h)^2/(8*m*(l*1e-2)^2) // Calculation of energy of ground state in Joule
E_1_eV = E_1/1.6e-19 // Calculation of energy in eV
E_2 = (2)^2*h^2/(8*m*(l*1e-2)^2) // Calculation of energy of first state in Joule
E_2_eV = E_2/1.6e-19 // Calculation of energy in eV
del_E = E_2_eV - E_1_eV // calculation of difference between first state and ground state
printf("\n Difference between first state \n and ground state energies is %f eV.\n\n\n",del_E);
// Answer in book is 113.04 eV

