//chapter-11 page 504 example 11.2
//==============================================================================
clc;
clear;

//For a radar system
Pt=250000;//peak transmitted power in W
G=2500;//power gain of the antenna
Smin=10^(-14);//minimum detectable signal in W 
Ae=10;//cross sectional area of the radar antenna in sq m
f=10*10^9;//frequency of radar in Hz
s=2;//radar cross sectional area in sq m
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
w=c/f;//wavelength in m
Rmax=(((Pt*G*Ae*s)/(Smin*(4*(%pi))^2))^(1/4))/1000;//Maximum range of a radar system in km

//OUTPUT
mprintf('\nMaximum range of a radar system is Rmax=%3.2f km',Rmax);

//=========================END OF PROGRAM===============================
