//Chapter 13 Thermodynamics Entropy and Free Energy

clc;
clear;

//Initialisation of Variables
F= -51108 //cal
f= 96500 //coloumbs
n= 2 //moles

//CALCULATIONS
E= -F*4.184/(n*f)

//RESULTS
mprintf("Value of E = %.2f v",E)
