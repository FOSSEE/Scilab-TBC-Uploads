//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
m= 9 //gms
H= 79.7 //cal per gram
T= 0 //C

//CALCULATIONS
S= m*H/(273+T)

//RESULTS
mprintf("Entropy change = %.2f E.U",S)
