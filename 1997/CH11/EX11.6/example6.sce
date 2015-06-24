//Chapter-11 example 6
//=============================================================================
clc;
clear;
PW  = 2*10^-6;//pulse width in sec
Vo  = 3*10^8;//velocity of EM wave in m/s

//Calculations

RR  = (Vo*PW)/2;//Range Resolution in m

//Output
mprintf('Range Resolution is %g m',RR);

//=============end of program==================================================
