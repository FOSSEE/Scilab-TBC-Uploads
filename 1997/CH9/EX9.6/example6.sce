//Chapter-9 example 6
//=============================================================================
clc;
clear;
//input data
F     = 9*10^9;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
NNBW  = 5;//Null to Null beamwidth
Da    = 5;//diameter of antenna in m

//Calculations
lamda = Vo/F;//wavelength
A     = (%pi*Da*Da)/4;//actural area of antenna
Ac    = 0.65*A;//Capture Area

D     = 6.4*(Da/lamda)^2;//directivity of antenna
D1     = 10*log10(D)//gain in dB
HPBW  = 70*(lamda/Da);//half power beamwidth in deg
NNBW  = 2*HPBW;//null to null beamwidth 

//Output
mprintf('HPBW of parabolic reflector is %g degrees\n NNBW of parabolic reflector is %g degrees\n Directivity is %g dB\n Capture area is %g m^2',HPBW,NNBW,D1,Ac);


//=============end of the program==============================================
