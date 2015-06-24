//Chapter-9 example 12
//=============================================================================
clc;
clear;
//input data

F     = 4*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
NNBW  = 8;//Null to Null beamwidth in degrees 
//Calculations
lamda = Vo/F;//wavelength
Da    = (140*lamda)/NNBW;
A     = (%pi*Da*Da)/4;//Area of antenna
Ac    = 0.65*A;//capture area

//Output
mprintf('\n Mouth diameter of parabolic reflector is %3.3f m \n Capture area is %3.2f m^2',Da,Ac);

//=============end of the program==============================================
