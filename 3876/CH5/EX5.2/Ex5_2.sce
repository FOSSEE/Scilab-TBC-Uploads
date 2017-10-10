//Chapter 5 Solutions Osmotic Pressure

clc;
clear;

//Initialisation of Variables
T= -0.2 //C
T1= 25 //C
T2= 1.86 //C
R= 0.082 //li-atm per mole per degree

//CALCULATIONS
P= -T*R*(T1+273)/T2

//RESULTS
mprintf("Osmotic pressure= %.2f atm",P)
