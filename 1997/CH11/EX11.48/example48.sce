//Chapter-11 example 48
//=============================================================================
clc;
clear;
//Given data

Vo    = 3*10^8;        // vel of EM wave m/s;
PRF   = 1000;          // pulse repetitive freq. in Hz
PW    = 4*10^-6;       // Pulse width in sec

//Calculations

Runamb  = Vo/(2*PRF);      // Distance of the Target
RR      = (Vo*PW)/2;       // Range Resolution
//output

mprintf('Maximum unambiguous range = %g Km\n Range Resolution = %g m',Runamb/1000,RR );

//==============================================================================
