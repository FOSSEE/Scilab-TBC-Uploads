//chapter-11 page 504 example 11.1
//==============================================================================
clc;
clear;

//For a radar system
Pt=600000;//peak pulse power in W
Smin=10^(-13);//minimum detectable signal in W 
Ae=5;//cross sectional area of the radar antenna in sq m
w=0.03;//wavelength in m
s=20;//radar cross sectional area in sq m

//CALCULATION
Rmax=(((Pt*s*Ae^2)/(4*(%pi)*Smin*w^2))^(1/4))/1000;//Maximum range of a radar system in km
RMax=Rmax/1.853;//In nautical miles; 1 nm=1.853 km

//OUTPUT
mprintf('\nMaximum range of a radar system is Rmax=%3.3f km',Rmax);
disp('In nautical miles; 1 nm=1.853 km');
mprintf('\nMaximum range of a radar system in nautical miles is RMax=%3.0f nm',RMax);

//=========================END OF PROGRAM===============================
