//Chapter-11 example 53
//=============================================================================
clc;
clear;
//input data
Pt = 500*10^3;//peal pulse power in watts
Pmin = 1*10^-12;//minimum receivable power
Ac   = 5;//area of capture in m^s
RCS  = 20;//radar cross sectional area in m^2
F    = 10*10^9;//radar operating frequency
Vo   = 3*10^8;//vel of Em wave in m/s;
lamda = 3*10^-2;//wavelength in cms

//calculations

Rmax = ((Pt*Ac*Ac*RCS)/(4*%pi*lamda*lamda*Pmin))^0.25;

//output
mprintf('Maximum Radar range of the Radar system is %g Kms',Rmax/1000);

//==============end of the program=============================================
