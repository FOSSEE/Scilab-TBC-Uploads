//Chapter-9 example 14
//=============================================================================
clc;
clear;
//input data

HPBW  = 6;//Half power Beamwidth in degrees

//Calculations
NNBW  = 2*HPBW;//Null to Null beamwidth in degrees
//HPBW = 70*(lamda/Da);
//(70/HPBW)= (Da/lamda);
Gp    = 6.4*(70/HPBW)^2//gain of parabolic reflector
G     = 10*log10(Gp)//gain in dB


//Output
mprintf('Gain of parabolic reflector is %3.2f dB\n NNBW of the antenna is %g degrees',G,NNBW);

//=============end of the program==============================================
