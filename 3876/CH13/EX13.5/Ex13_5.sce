//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
Scl= 53.29 //E.U
Sag= 10.21 //E.U
Sagcl= 22.97 //E.U

//CALCULATIONS
dS= Sagcl-Sag-0.5*Scl

//RESULTS
mprintf("Entropy change = %.2f E.U",dS)
