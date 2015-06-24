//Chapter-2 example 8
//=============================================================================
clc;
clear;
//input data
F          = 9;             //Noise figure in dB
BW         = 3*10^6;        // Bandwidth
To         = 290;           // Temperature in kelvin
K          = 1.38*10^-23;   // Boltzman constant

//Calculations

F1         = 10^(F/10)     //antilog calculation
Pmin       = (K*To*BW)*(F1-1);//minimum receivable power

//Output
mprintf('Minimum receivable power Pmin = %3.4f pW',Pmin*10^12);
mprintf('\n Calculation error at Pmin in textbook');


//==============================================================================
