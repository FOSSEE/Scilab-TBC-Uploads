//chapter 5 example 8
//=============================================================================
clc;
clear;
// Given Data
R       = 10;           // circumference to pitch ratio
e       = 1.6*10^-19;   // charge of electron
m       = 9.1*10^-31;   // mass of electron in Kg
c       = 3*10^8;       // vel. of EM waves in m/s

// Calculations
Vp      = c/R;           // axial phase velocity = free space vel*(pitch/circumference) 
Va      = (Vp^2 * m)/(2*e);

// Output
mprintf('Anode Voltage = %3.2f kV',Va/1000);
disp('In practice,the electron beam velocity is kept slightly greater than the axial phase velocity of RF signal')
//------------------------------------------------------------------------------
