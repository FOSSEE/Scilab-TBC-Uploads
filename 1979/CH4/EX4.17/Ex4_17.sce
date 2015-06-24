//chapter-4 page 152 example 4.17
//==============================================================================
clc;
clear;

c=3*10^10;//Velocity of Light in cm/sec
f=6*10^9;//Frequency in Hz

//CALCULATION
fc=(0.8*f);//Given Cutoff frequency for TE11 mode in Hz
wc=(c/fc);//Cutoff wavelength in cms
D=((1.841*wc)/(%pi));//Diameter of waveguide in cm
w0=(c/f);//Free space wavelength in cm
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cm

//OUTPUT
mprintf('\nDiameter of the waveguide is D=%1.4f cm \nGuide wavelength is wg=%1.3f cm',D,wg);

//=========================END OF PROGRAM===============================
