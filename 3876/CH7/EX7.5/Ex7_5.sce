//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
m= 0.01 //M
CB= 235 //mm
R= 426.3 //ohms
M= 265 
C= 0.448

//CALCULATIONS
k= M*C/(R*CB)
A= k*1000/m

//RESULTS
mprintf("Equivalent conductance= %.1f ohms",A)
