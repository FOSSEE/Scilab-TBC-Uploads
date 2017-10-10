//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
kw= 10**-14
Ka= 1.8*10**-5

//CALCULATIONS
Kb= Ka
B= sqrt(kw/(Ka*Kb))

//RESULTS
mprintf("Degree of Hydrolysis = %.2e",B)
