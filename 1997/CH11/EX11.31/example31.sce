//Chapter-11 example 31
//=============================================================================
clc;
clear;
//input data
F = 10*10^9;//operating frequency in Hz
PRF = 1000;//pulse repetitive frequency in Hz
Fm  = PRF;//modulating frequency
//Calculations
Fc1  = F+Fm;//closest frequency in Hz
Fc2  = F-Fm; //closest frequency in Hz
//output
mprintf('Closest Frequencies are %3.3f Mhz and %3.3f Mhz',Fc1/10^6,Fc2/10^6  );

//================end of the program=============================================
