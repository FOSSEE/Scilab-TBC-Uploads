//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
E= 0.527 //v
T= 25 //C
R= 0.0592
e= -0.246 //v

//CALCULATIONS
pH= -(-E-e)/R

//RESULTS
mprintf("pH of the unknown solution= %.2f",pH);
