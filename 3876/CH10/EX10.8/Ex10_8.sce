//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
c= 0.08 //molar
c1= 0.04 //molar

//CALCULATIONS
E= R*(T+273)*log(c/c1)/(2*F)
E1= 2*E

//RESULTS
mprintf("Potential of the cell = %.3f v",E)
mprintf("\nPotential of the cell = %.3f v",E1)
