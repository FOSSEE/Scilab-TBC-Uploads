//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F1= 31350 //cal
F2= 26224 //cal
F= 96500 //coloumbs

//CALCULATIONS
F3= -F1+F2
E= F3*4.184/F

//RESULTS
mprintf("Value of E = %.4f cal",E)
