//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
Scl= 13.17 //E.U
Sag= 17.67 //E.U
Sagcl= 22.97 //E.U

//CALCULATIONS
dS= Scl+Sag-Sagcl

//RESULTS
mprintf("Entropy change = %.2f E.U",dS)
