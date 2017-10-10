//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
k= 1.8*10**-5
C= 0.2 //M
T= 25 //C

//CALCULATIONS
x= sqrt(C*k)
a= x/C
C1= a*C

//RESULTS
mprintf("Hydronium-ion concentration = %.2e mole per litre",C1)
