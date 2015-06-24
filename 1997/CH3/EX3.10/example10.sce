//Chapter-3 example 10
//=============================================================================
clc;
clear;
//input data
r             = 0.5;            //Antenna Radius in m
f             = 8*10^9          //operating frequency in Hz
Vo            = 3*10^8;         //vel. of EM wave in m/s
RCS           = 5;              // Radar cross section in m^2
D             = 1;              // antenna diameter in m
F             = 4.77;              // noise figure in dB
Rmax          = 12*10^3         // Radar range
BW            = 500*10^3;       // bandwidth

//Calculation
F1            = 10^(F/10)       // antilog calculation
lamda         = Vo/f            // wavelength

//Rmax        = 48*((Pt*D^4*RCS)/(BW*lamda*lamda(F-1)))^0.25

Pt            = ((Rmax/48)^4)*((BW*lamda*lamda*(F1-1))/(D^4*RCS))

//Output
mprintf('Peak Transmitted Power is %e',Pt);
mprintf('\n Note: Calculation error in textbook at Pt 10^12 missing')
//=============================================================================
