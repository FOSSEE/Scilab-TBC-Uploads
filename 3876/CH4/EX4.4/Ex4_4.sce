//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
p= 214 //mm
M= 112.5 //gms
m= 18 //gms
m1= 10 //gms

//CALCULATIONS
P= 760-p
M1= m1*P*m/(p*M)

//RESULTS
mprintf("Quantity of Water= %.2f gms",M1)
