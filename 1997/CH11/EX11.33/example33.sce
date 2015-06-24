//Chapter-11 example 33
//=============================================================================
clc;
clear;
//input data
F          = 9;             //Noise figure in dB
BW         = 2*10^6;        // Bandwidth
To         = 300;           // Temperature in kelvin
K          = 1.38*10^-23;   // Boltzman constant

//Calculations

F1         = 10^(F/10)     //antilog calculation
Pmin       = (K*To*BW)*(F1-1);//minimum receivable power

//Output
mprintf('Minimum receivable power Pmin = %e W',Pmin);

//==============================================================================
