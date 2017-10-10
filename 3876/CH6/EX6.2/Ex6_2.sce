//Chapter 6 Solutions of Electrolytes

clc;
clear;

//Initialisation of Variables
M= 0.001 //molar
M1= 0.002 //molar
M2= 0.004 //molar
n= 1 //moles
n1= 2 //moles
v= 0.509

//CALCULATIONS
Is= 0.5*(M*n**2+M1*n**2+M1*n1**2+M2*n**2)
r= 10**(-v*n**2*sqrt(Is))*M
r1= 10**(-v*n1**2*sqrt(Is))*M1

//RESULTS
mprintf("Ionic strength= %.3f",Is)
mprintf("\nActivity of sodium = %.4f molar",r)
mprintf("\nActivity of barium = %.4f molar",r1)
