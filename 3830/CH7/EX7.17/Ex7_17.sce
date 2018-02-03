// Exa 7.17

clc;
clear;

// Given

// An LVDT to measure deflection of bellows
S1 = 40; // sensitivity in V/mm
d = 0.125; // displacement in mm
P1 = 0.8*10^6; // pressure in N/m^2
Vo2 = 3.5 ; // Output of LVDT for pressure P2

// Solution

// output voltage for the pressure p1
Vo1 = S1*d; // in volts

L_senstivity = Vo1/P1;

// For P2 calculations when V = 3.5
P2 = Vo2/L_senstivity;

printf('The sensitivity of LVDT and pressure when the output voltage of LVDT is 3.5 V \n are  %.2f * 10^-6 V/N/m^2 and %.1f * 10^5 N/m^2 respectively \n',L_senstivity*10^6,P2*10^-5);
