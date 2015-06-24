//chapter-4 page 150 example 4.13
//==============================================================================
clc;
clear;

//For a rectangular waveguide in TE10 mode
a=6;//Length of Rectangular Waveguide in cm
b=4;//Width of Rectangular Waveguide in cm
c=3*10^10;//Velocity of Light in cm/sec
x=4.55;//distance between maximum and minimum in cm

//CALCULATIONS
wc=2*a;//Cutoff wavelength for a TE10 mode in cms
wg=4*x;//Guide Wavelength in cm
w0=(wg/sqrt(1+(wg/wc)^2));////Free space wavelength in cm
f=(c/w0)/10^9;//Frequency of the wave in GHz

//OUTPUT
mprintf('\nFrequency of the wave is f=%1.3f GHz',f);

//=========================END OF PROGRAM===============================
