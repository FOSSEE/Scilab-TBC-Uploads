//chapter-9 page 413 example 9.12
//==============================================================================
clc;
clear;

//For an upconverter parametric amplifier
rQ=8;//figure of merit for a diode nonlinear capacitor
r=0.2;
y=8;//ratio of output frequency over signal frequency (f0/fs)
Td=300;//Diode Temperature in K
T0=300;//Ambient Temperature in K

//CALCULATION
X=((rQ)^2)/y;
G=((y*X)/(1+sqrt(1+X))^2);//Max power gain 
GdB=10*log10(G);//Maximum Power Gain in dB
F=(1+((2*Td/T0)*((1/rQ)+(1/rQ)^2)));//Noise Figure 
FdB=10*log10(F);//Noise Figure in dB
BW=2*r*sqrt(y);//Bandwidth

//OUTPUT
mprintf('\nMaximum Power Gain is GdB=%1.2f dB\nNoise Figure is FdB=%1.2f dB \nBandWidth is BW=%1.2f',GdB,FdB,BW);

//=========================END OF PROGRAM===============================

 
