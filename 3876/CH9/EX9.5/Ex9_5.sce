//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.050 //M
Ksp= 4.3*10**-7

//CALCULATIONS
C= sqrt(Ksp*c)

//RESULTS
mprintf("Concentration of hydronium-ion = %.1e mole per litre",C)
