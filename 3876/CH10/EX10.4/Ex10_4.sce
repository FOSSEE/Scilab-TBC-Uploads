//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E= 0.763 //v
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
M= 0.1 //m
M1= 0.01 //m

//CALCULATIONS
E1= E-(R*(273+T)*2.3*log10(M)/(2*F))+R*(273+T)*2.3*log10(M1)/F

//RESULTS
mprintf("Oxidation potential of copper electrode = %.2f v",E1)
