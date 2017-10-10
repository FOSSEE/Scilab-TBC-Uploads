//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
C= 0.050 //M
K= 2.4*10**-17
c= 0.1 //M

//CALCULATIONS
c1= K*C/c**2

//RESULTS
mprintf("Concentration of carbonate-ion = %.1e mole per litre",c1)
