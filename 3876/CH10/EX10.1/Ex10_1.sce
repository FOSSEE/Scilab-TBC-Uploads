//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
T= 25 //C
M= 0.08 //m
P= 1 //atm
F= 96500 //coloumbs
R= 8.31 //J/mol K

//CALCULATIONS
E= -R*(273+T)*2.3*log10(M)/F

//RESULTS
mprintf("Oxidation potential of hydrogen electrode = %.3f v",E)
