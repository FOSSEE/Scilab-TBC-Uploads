//Chapter 5 Solutions Osmotic Pressure

clc;
clear;

//Initialisation of Variables
T= 20 //C
R= 0.082 //li-atm per mole per degree
V= 2 //lit
m= 6 //gms
M= 60 //gms

//CALCULATIONS
P= m*R*(273+T)/(M*V)

//RESULTS
mprintf("Osmotic pressure= %.1f atm",P)
