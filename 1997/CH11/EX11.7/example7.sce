//Chapter-11 example 7
//=============================================================================
clc;
clear;
t   = 50*10^-6;//echo time in sec
Vo  = 3*10^8;//velocity of EM wave in m/s

//Calculations

R  = (Vo*t)/2;//Range in m

//Output
mprintf('Target Range is %g Kms',R/1000);

//=============end of program==================================================
