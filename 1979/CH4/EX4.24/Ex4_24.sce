//chapter-4 page 156 example 4.24
//==============================================================================
clc;
clear;

a=2.5;//Radius of circular waveguide in cm
d=5;//Internal Diameter of circular waveguide in cm
f=9*10^9;//Frequency in Hz in TE11 mode
c=3*10^10;//Velocity of Light in cm/sec

//CALCULATION
w0=(c/f);//Free space wavelength in cms
wc=((d*(%pi))/1.841);//Cutoff wavelength in TE11 mode in cms
fc=(c/wc);//Cutoff frequency in Hz
Pbd=(1790*(a^2)*sqrt(1-(fc/f)^2))/1000;//Breakdown Power in TE11 mode in kW

//OUTPUT
mprintf('\nBreakdown Power in TE11 mode is Pbd=%5.3f kW',Pbd);

//=========================END OF PROGRAM===============================
