//Chapter-9 example 4
//=============================================================================
clc;
clear;
//input data
Da    = 2;//diameter of parabolic antenna in m
F     = 2*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations
lamda = Vo/F;//wavelength
Gp    = 6.4*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB
//Output
mprintf('Gain of parabolic reflector is %3.2f dB',G);

//=============end of the program==============================================
