//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
T= 25 //C
a= 0.2 //molar
P= 1 //atm
F1= -5126 //cal
R= 2 //cal/mole K

//CALCULATIONS
F= F1+R*(273+T)*2.303*log10(a**2)

//RESULTS
mprintf("Value of F = %.0f cal",F)
