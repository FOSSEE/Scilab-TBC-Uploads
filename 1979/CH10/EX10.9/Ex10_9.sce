//chapter-10 page 489 example 10.9
//==============================================================================
clc;
clear;

D=30;//Diameter of a dish antenna with circular aperture in m
f=4*10^9;//down link frequency in Hz
MdB=20;//G/T ratio of earth station in dB
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
A=((%pi)/4)*D^2;//area in sqm
w=c/f;//wavelength in m
G=(4*(%pi)*A)/w^2;//Gain
GdB=10*log10(G);//Gain in dB
TsdB=GdB-MdB;//The System Noise Temperature in dB

//OUTPUT
mprintf('\nThe System Noise Temperature is TsdB=%2.2f dB',TsdB);

//=========================END OF PROGRAM=============================== 
