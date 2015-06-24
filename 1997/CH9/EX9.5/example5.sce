//Chapter-9 example 5
//=============================================================================
clc;
clear;
//input data
F     = 6*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
NNBW  = 5;//Null to Null beamwidth

//Calculations
lamda = Vo/F;//wavelength

Da  = 140*(lamda/NNBW);
HPBW  = 70*(lamda/Da);//half power beamwidth in deg
Gp    = 6.4*(Da/lamda)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB

//Output
mprintf('Mouth Diameter of paraboloid is %g m\n HPBW of parabolic reflector is %g degrees\n',Da,HPBW);

mprintf(' Gain of parabolic reflector is %g dB\n Gain of parabolic reflector is %g ',G,Gp);

//=============end of the program==============================================
