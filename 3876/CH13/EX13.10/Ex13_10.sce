//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F= 18430 //cal
F1= -31350 //cal
F2= 26224 //cal
R= 1.99 //cal/mole K
T= 25 //C

//CALCULATIONS
F3= F+F1+F2
Ksp= 10**(-F3/(R*(273+T)*2.303))

//RESULTS
mprintf("Solubility product = %.2e",Ksp)
