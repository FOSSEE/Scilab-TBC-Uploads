//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F= -51180 //cal
T= 25 //C
R= 1.99 //cal/mole K

//CALCULATIONS
K= 10**(-F/(R*(273+T)*2.303))

//RESULTS
mprintf("Equilibrium constant = %.2e",K)
