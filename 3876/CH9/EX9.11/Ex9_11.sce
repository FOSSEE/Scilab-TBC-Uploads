//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.050 //M
Kb= 1.8*10**-5
T= 25 //C
Kw= 10**-14

//CALCULATIONS
C= sqrt(Kw*c/Kb)

//RESULTS
mprintf("Concentration of hydronium ion = %.2e mol per litre",C)
