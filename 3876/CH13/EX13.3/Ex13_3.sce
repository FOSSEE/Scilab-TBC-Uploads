//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
m= 14 //gms
M= 28 //gms
R= 1.99 // cal per mole per degree
V= 30 //lit
v1= 10 //lit

//CALCULATIONS
S1= (m/M)*R*2.303*log10(V/v1)

//RESULTS
mprintf("Entropy change = %.2f E.U",S1)
