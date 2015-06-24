//Chapter-9 example 16
//=============================================================================
clc;
clear;
//input data
//Da = 7*lamda; diameter of antenna

//Calculations
//HPBW = 70*(lamda/Da)
//HPBW = 70*(lamda/(7*lamda));
HPBW   = 70/7;//half power beamwidth
NNBW   = 2*HPBW;//null to null beamwidth
//Gp  = 6.4*(Da/lamda)^2; //power gain 

//Gp  = 6.4*((7*lamda)/lamda)^2 ;  power gain of parabolic reflector
Gp    =6.4*(7)^2;
G     = 10*log10(Gp)//gain in dB


//Output
mprintf('Gain of parabolic reflector is %3.1f \n HPBW of Antenna is %3.1f degrees\n NNBW of Antenna is %3.1f degrees  ',Gp,HPBW,NNBW);

//=============end of the program==============================================
