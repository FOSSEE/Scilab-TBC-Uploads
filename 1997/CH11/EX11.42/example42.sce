//Chapter-11 example 42
//=============================================================================
clc;
clear;
//Given data

PW    = 10^-6;         // Pulse Width in sec
PRF   = 1000;          // Pulse Repetitive Freq in Hz 
Vo    = 3*10^8;        // vel of EM wave m/s;

//Calculations

Rmax  = Vo/(2*PRF);    // max range of radar
Rmin  = (Vo*PW)/2 ;    // min range of radar

//output
mprintf('Maximum Range of radar is %e m\n Minimum Range of radar is %d m',Rmax,Rmin );

//==============================================================================
