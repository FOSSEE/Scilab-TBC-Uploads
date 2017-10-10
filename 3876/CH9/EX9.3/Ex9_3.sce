//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
K= 1.8*10**-5
V= 500 //ml
c1= 0.3 //M
c2= 0.2 //M

//CALCULATIONS
x= V*c1/1000
y= V*c2/1000
C= K*y/x

//RESULTS
mprintf("Hydronium-ion concentration = %.2e mole per litre",C)
