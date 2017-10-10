//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
T= 25 //C
F= 1160 //cal
P= 0.1 //atm
P1= 1 //atm
R= 2 //cal/mole K

//CALCULATIONS
F1= F+R*(273+T)*log(P/P1**2)
F2= F+R*(273+T)*log(P1/P**2)

//RESULTS
mprintf("Value of F = %.0f cal",F1)
mprintf("\nValue of F = %.0f cal",F2)
