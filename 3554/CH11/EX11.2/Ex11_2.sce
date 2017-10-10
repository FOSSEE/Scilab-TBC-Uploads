// Exa 11.2

clc;
clear all;

// Given data
//Refering fig. 11.5 - Unbalanced Wheatstone bridge

R1=1; // in k Ohms
R2= 2.5; // in k Ohms
R3=3.5; // in k Ohms
R4=10; // in k Ohms
V= 6; // Applied Voltage(V)
Rg=0.3; // Galvanometer resistance in k Ohms

// Solution

// Eth=Ea-Eb ; \\ Thevenin's equivalent voltage
Eth=V*(R4/(R2+R4) - R3/(R1+R3));
Rth=(R1*R3/(R1+R3)) + (R2*R4/(R2+R4)) ;
// Refering the equivalent circuit connected along with the galvanometer as shown in fig. 11.6
Ig=Eth/(Rth+Rg) ; // Current through galvanometer
printf(' The current through galvanometer is = %.2f micro Amp \n',round(Ig*10^3));
//The answer vary due to round off error
