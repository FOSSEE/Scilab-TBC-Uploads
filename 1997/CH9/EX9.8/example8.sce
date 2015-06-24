//Chapter-9 example 8
//=============================================================================
clc;
clear;
//input data

F     = 4*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
Gp    = 500;//power gain of antenna
//Calculations
lamda = Vo/F;//wavelength
Da    = lamda*(Gp/6.4)^0.5//diameter of parabolic antenna in m

NNBW  = 140*(lamda/Da);//beamwidth b/w null to null
HPBW  = 70*(lamda/Da);//half power beamwidth in deg

//Output
mprintf('NNBW of parabolic reflector is %3.2f degrees\n HPBW of parabolic reflector is %3.2fdegrees\n',NNBW,HPBW);

mprintf(' Mouth diameter of parabolic reflector is %3.2f m',Da);

//=============end of the program==============================================
