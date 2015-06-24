//Chapter-7 example 2
//=============================================================================
clc;
clear;
//input data
BW    = 1*10^9;//bandwidth of pulsed radar in hz

//Calculations
Tint  = 1/BW;//radar integration time in sec
//Output
mprintf('Radar integration time is %g nsec',Tint*10^9);

//=============end of the program==============================================
