//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
P= 752 //mm
V= 0.2 //lit
T= 21 //C
R= 0.0821 //lit atm mole^-1
m= 0.980 //gms

//CALCULATIONS
M= m*R*(T+273)*760/(V*P)

//RESULTS
mprintf("Molecular Weight of Chloroform = %.1f gms per mole",M)
