//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
V= 5.16*10**14 //cm per sec
M2= 28 //gms
M1= 2.02 //gms

//CALCULATIONS
c1= V*sqrt(M2/M1)

//RESULTS
mprintf("Velocity of hydrogen molecule = %.2e cm per sec",c1)
