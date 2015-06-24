//Chapter-9 example 23
//=============================================================================
clc;
clear;
//input data
F   = 12*10^9;//operating frequency in Ghz
I   = 2;//current in amperes
Rr  = 300;//radiation resistance in ohms

//Calculations
Pr  = I*I*Rr;

//output
mprintf('Radiated Power is %3.1f Watts',Pr);

//================end of the program============================================
