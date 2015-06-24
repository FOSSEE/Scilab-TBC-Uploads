//Chapter-9 example 7
//=============================================================================
clc;
clear;
//input data
Da    = 5;//diameter of parabolic antenna in m
F     = 5*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations
lamda = Vo/F;//wavelength
R     = (2*Da*Da)/lamda;//min distance b/w antennas
//Output
mprintf('Minimum distance Required is %g m',R);

//=============end of the program==============================================
