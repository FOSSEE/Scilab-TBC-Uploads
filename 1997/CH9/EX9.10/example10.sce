//Chapter-9 example 10
//=============================================================================
clc;
clear;
//input data
F     = 10*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
Da    = 5;//antenna diameter in m

//Calculations
lamda = Vo/F;//wavelength
Gp    = 6.4*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB

BWFN  = 140*(lamda/Da);//beam width b/n nulls
HPBW  = 70*(lamda/Da);//half power beamwidth in deg


//Output
mprintf('BWFN of parabolic reflector is %g degrees\n HPBW of parabolic reflector is %g degrees\n',BWFN,HPBW);

mprintf(' Gain of parabolic reflector is %g dB ',G);

//=============end of the program==============================================
