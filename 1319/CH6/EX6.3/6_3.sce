// Determine the EMF generated in a wave winding

clc;
clear;

phi=40*(10^-3);
A=2; //Wave Winding
P=8;
E=400;
Z=960;

N=E*60*A/(phi*Z*P) // EMF equation of a DC machine

printf('The speed generated = %g rpm \n',N)

