//Chapter-9 example 3
//=============================================================================
clc;
clear;
//input data
Da    = 0.15;//diameter of parabolic antenna in m
F     = 9*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s

//Calculations
lamda = Vo/F;//wavelength
Gp    = 6.4*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB
NNBW  = 140*(lamda/Da);
HPBW  = 70*(lamda/Da);//half power bandwidth in deg

//Output
mprintf('NNBW of parabolic reflector is %3.2f degrees\n HPBW of parabolic reflector is %3.2f degrees\n',NNBW,HPBW);

mprintf(' Gain of parabolic reflector is %3.2f dB',G);

//=============end of the program==============================================
