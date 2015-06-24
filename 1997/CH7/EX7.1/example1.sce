//Chapter-7 example 1
//=============================================================================
clc;
clear;
//input data
BW    = 0.5*10^9;//bandwidth of pulsed radar in hz
Tfa   = 10;//false alarm time in minutes

//Calculations
Tfa1  = Tfa*60;//false alarm time in seconds
Pfa  = 1/(BW*Tfa1)
//Output
mprintf('probability of false alarm is %g',Pfa);

//=============end of the program==============================================
