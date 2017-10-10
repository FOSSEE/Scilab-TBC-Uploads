// Exa 11.3

clc;
clear all;
	
// Given data

// Refering Fig. 11.9(page no.311) - slightly unbalanced Wheatstone bridge
R= 700; // in Ohms
Dell_R= 35; // in Ohms
E=10; // Supplied voltage(V)
Rg=125;//Internal resistance of galvanometer(Ohms)
    
// Solution

Eth= E*Dell_R/(4*R) ; // Thevenin's equivalent voltage(V)
Rth=R; // Thevenin's equivalent resistance(Ohms)
Ig= Eth/(Rth+Rg); // Current through galvanometer(Amp)
printf(' The current through galvanometer by the approximation method is %.1f micro Amp \n',Ig*10^6);
