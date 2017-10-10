//Chapter 6 Solutions of Electrolytes

clc;
clear;

//Initialisation of Variables
T= 25 //C
R= 0.0821 //li-atm per mole per degree
M= 0.5 //m
n= 2
m= 0.680
V= 1 //lit

//CALCULATIONS
P= R*(273+T)*M*n*m/V

//RESULTS
mprintf("Osmotic pressure= %.2f atm",P)
