//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 100 //cm
m= 2*10**20 //molecules
N= 6*10**23
R= 0.0821 //lit atm mole^-1
T= 27 //C

//CALCULATIONS
V= m*R*(T+273)*760*100/(N*P)

//RESULTS
mprintf("Volume = %.2f cm^3",V)
