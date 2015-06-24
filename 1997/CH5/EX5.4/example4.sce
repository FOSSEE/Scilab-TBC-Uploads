//Chapter-5 example 4
//=============================================================================
clc;
clear;
//input data
lamda  = 0.03;//wavelength in m
Pt     = 250*10^3;//transmitter power
G      = 2000;//antenna gain
R      = 50*10^3;//maximum range
Pr     = 10*10^-12;//minimum detectable power
//Calculations
Ae     = (lamda*lamda*G)/(4*%pi);//effective aperture area
RCS    = (Pr*(4*%pi*R*R)^2)/(Pt*G*Ae);//Radar cross section of the target

//output
mprintf('Radar cross section of the target is %3.2f m^2',RCS);

//================end of the program===========================================
