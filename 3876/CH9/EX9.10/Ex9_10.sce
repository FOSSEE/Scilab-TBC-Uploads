//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.1 //M
Kb= 1.8*10**-5
Kw= 10**-14

//CALCULATIONS
C= sqrt(c*Kw/Kb)

//RESULTS
mprintf("Concentration of hydronium ion = %.2e mol per litre",C)
