//Chapter-9 example 11
//=============================================================================
clc;
clear;
//input data
F     = 10*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
IE    =0.6;//illumination efficiency
Da    =12;//diameter of antenna
//Calculations
lamda = Vo/F;//wavelength
Gp    = IE*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB

//Output
mprintf(' Gain of parabolic reflector is %3.2f dB',G);

//=============end of the program==============================================
