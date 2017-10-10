//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
H= 540 //cal per gram
m= 9 //gms
T= 100 //C

//CALCULATIONS
S= H*m/(273+T)

//RESULTS
mprintf("Entropy change = %.2f E.U",S)
