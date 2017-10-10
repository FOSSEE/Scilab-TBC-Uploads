//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
n= 2 //moles
R= 1.99 //cal er mole per degree
T= 80 //C
H1= 94.3 //cal per gram
M= 78 //gms per mole

//CALCULATIONS
w= n*R*(273+T)
H= n*M*H1
E= H-w

//RESULTS
mprintf("Value of dH= %.0f cal",H)
mprintf("\nValue of dE= %.0f cal",E)
