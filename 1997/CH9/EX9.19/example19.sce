//Chapter-9 example 19
//=============================================================================
clc;
clear;
//input data
F     = 8*10^9;//radar operating frequency in hz
Vo    = 3*10^10;//velocity of EM wave in cm/s
D     = 10;//pyramida horn  diameter in cm
W     = 5;//pyramida horn  width in cm
//Calculations
lamda = Vo/F//wavelength in cm
Gp     = (4.5*W*D)/(lamda*lamda);//power gain
G      = 10*log10(Gp);//power gain in dB
Di     =(7.5*W*D)/(lamda*lamda);//directivity
DI     =10*log10(Di);//Directivity in dB


//Output
mprintf('Powergain is %3.2f dB\n Directivity is %3.2f dB',G,DI);


//=============end of the program==============================================
