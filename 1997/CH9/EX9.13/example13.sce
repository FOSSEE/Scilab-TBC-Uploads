//Chapter-9 example 13
//=============================================================================
clc;
clear;
//input data
F     = 4*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
NNBW  = 2;//Null to Null Beamwidth in degrees

//Calculations
lamda = Vo/F;//wavelength
Da    = (140*lamda)/2;//diameter of antenna in m
Gp    = 6.4*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB


//Output
mprintf('Gain of parabolic reflector is %g dB\n mouth diameter of the antenna is %g m ',G,Da);

//=============end of the program==============================================
