//chapter-11 page 505 example 11.5
//==============================================================================
clc;
clear;

//For a military radar
Pt=2500000;//power output in W
f=5*10^9;//frequency of radar in H
c=3*10^8;//Velocity of light in m/sec
D=5;//antenna diameter in m
B=1.6*10^6;//receiver bandwidth in Hz
s=1;//radar cross sectional area in sq m
NF=12;//noise figure in dB

//CALCULATION
w=c/f;//wavelength in m
F=10^(NF/10);//noise figure
Rmax=(48*((Pt*s*D^4)/(B*(F-1)*w^2))^(1/4));//Maximum detection range in km

//OUTPUT
mprintf('\nMaximum detection range of a radar is Rmax=%3.0f km',Rmax);

//=========================END OF PROGRAM===============================
