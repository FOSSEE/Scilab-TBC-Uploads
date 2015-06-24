//Chapter-9 example 17
//=============================================================================
clc;
clear;
//input data
F     = 8*10^9;//radar operating frequency in hz
Vo    = 3*10^10;//velocity of EM wave in cm/s
D     = 9;//pyramida horn  diameter in cm
W     = 4;//pyramida horn  width in cm
//Calculations
lamda = Vo/F//wavelength in cm
HPBW_E = 56*(lamda/D)//halfpower beamwidth in E-plane;
HPBW_H = 67*(lamda/W)//halfpower beamwidth in H-plane;
Gp     = (4.5*W*D)/(lamda*lamda);//power gain
G      = 10*log10(Gp);//power gain in dB
Di     =(7.5*W*D)/(lamda*lamda);//directivity


//Output
mprintf('Halfpower beamwidth ib E-plane is %3.2f degrees\n Halfpower beamwidth iN H-plane is %3.2f degrees\n Powergain is %3.2f dB\n Directivity is %3.2f',HPBW_E,HPBW_H,G,Di);


//=============end of the program==============================================
