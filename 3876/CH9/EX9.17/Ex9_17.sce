//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.1 //M
Ka= 6.3*10**-5
pKw= 14
//CALCULATIONS
pH= -0.5*log10(Ka)+0.5*pKw+0.5*log10(c)

//RESULTS
mprintf("pH of a buffer solution = %.2f",pH)
