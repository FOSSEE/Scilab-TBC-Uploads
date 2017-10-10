//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
n2= 10.05*10**-3 //poise
d1= 0.879 //gms cm^-3
t= 88 //sec
d2= 1 //gms cm^-3
t1= 120 //sec

//Calculations
n1= d1*t/(d2*t1)

//Results
mprintf("Relative Viscosity= %.3f",n1);
