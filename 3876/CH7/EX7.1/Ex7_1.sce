//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
R= 10 //ohms
V= 5 //v
t= 20 //min

//CALCULATIONS
I= V/R
Q= I*t*60
E= Q*V

//RESULTS
mprintf("Current= %.2f amp",I)
mprintf("\nColoumbs of electricity that will pass= %.0f coloumbs",Q)
mprintf("\nEnergy expended= %.0f joules",E)
