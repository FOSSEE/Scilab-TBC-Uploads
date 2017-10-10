//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
m= 64 //gms
M= 32 //gms
T= 100 //C
T1= 0 //C
cp= 7.05 //cal per mole per degree
cp1= 5.06 //cal per mole per degree

//CALCULATIONS
H= cp*(m/M)*(T-T1)
E= cp1*(m/M)*(T-T1)

//RESULTS
mprintf("Value of dH= %.0f cal",H)
mprintf("\nValue of dE= %.0f ca;",E)
