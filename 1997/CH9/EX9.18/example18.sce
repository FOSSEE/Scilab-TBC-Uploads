//Chapter-9 example 18
//=============================================================================
clc;
clear;
//input data
//Aperture size = 10*lamda
//Calculations
//Gp = (4.5*W*D)/(lamda*lamda);
//Gp = (4.5*(10*lamda)*(10*lamda))/(lamda*lamda);
Gp   = (4.5*10*10);//power gain of square horn antenna
G    = 10*log10(Gp);//power gain in dB

//Output
mprintf('Power Gain of Square Horn Antenna is %3.2f dB',G);
//=============end of the program==============================================
