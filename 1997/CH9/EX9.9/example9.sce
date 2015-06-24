//Chapter-9 example 9
//=============================================================================
clc;
clear;
//input data

F     = 9*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
Gp    = 100;//power gain of antenna in dB
//Calculations
lamda = Vo/F;//wavelength
//antilog calculation
//100 = 10log10(Gp);
//10  = log(Gp);
G     = 10^10;//gain of antenna
Da    = lamda*sqrt(G/6.4)//diameter of parabolic antenna in m
A     = (%pi*Da*Da)/4;//Area of antenna
Ac    = 0.65*A;//capture area
NNBW  = 140*(lamda/Da);//beamwidth b/w null to null
HPBW  = 70*(lamda/Da);//half power beamwidth in deg

//Output
mprintf('NNBW of parabolic reflector is %g degrees\n HPBW of parabolic reflector is %g degrees\n',NNBW,HPBW);

mprintf('\n Mouth diameter of parabolic reflector is %3.3f m\n Capture area is %3.2f m^2',Da,Ac);

//=============end of the program==============================================
