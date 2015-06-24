//Chapter-11 example 46
//=============================================================================
clc;
clear;
//Given data
Runamb      = 300*10^3;     // unambiguous range in m
Vo          = 3*10^8;       // Vel. of EM wave in m/s

//Calculations

PRF         = Vo/(2*Runamb); // Pulse repetitive freq.

//Output
mprintf('Pulse repetitive frequency = %g Hz',PRF);
//==============================================================================
