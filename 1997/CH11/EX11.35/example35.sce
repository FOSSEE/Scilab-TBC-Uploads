//Chapter-11 example 35
//=============================================================================
clc;
clear;
//input data
lamda         = 0.03;           //wavelength in m
RCS           = 5;              // Radar cross section in m^2
D             = 1;              // antenna diameter in m
F             = 5;              // noise figure in dB
Rmax          = 10*10^3         // Radar range
BW            = 500*10^3;       // bandwidth

//Calculation
F1            = 10^(F/10)       // antilog calculation

//Rmax        = 48*((Pt*D^4*RCS)/(BW*lamda*lamda(F-1)))^0.25

Pt            = ((Rmax/48)^4)*((BW*lamda*lamda*(F1-1))/(D^4*RCS))

//Output
mprintf('Peak Transmitted Power is %e',Pt);
mprintf('\n Note: Antilog Calculation error in textbook at F')
//=============================================================================
