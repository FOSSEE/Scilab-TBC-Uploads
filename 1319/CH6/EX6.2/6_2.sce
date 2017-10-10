// Determine the EMF generated

clc;
clear;

phi=40*(10^-3);
A=8; //Lap Winding
P=8;
N=400;
Z=960;

E=P*N*Z*phi/(60*A); // EMF equation of a DC machine

printf('The EMF generated = %g volts \n',E)

