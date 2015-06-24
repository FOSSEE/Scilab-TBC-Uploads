//Chapter-9 example 1
//=============================================================================
clc;
clear;
//input data
Da    = 2.5;//diameter of parabolic antenna in m
F     = 5*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations
lamda = Vo/F;//wavelength
NNBW  = 140*(lamda/Da);
HPBW  = 70*(lamda/Da);//half power beamwidth in deg

//Output
mprintf('NNBW of parabolic reflector is %g degrees\n HPBW of parabolic reflector is %g degrees',NNBW,HPBW);

//=============end of the program==============================================
