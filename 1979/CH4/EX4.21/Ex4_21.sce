//chapter-4 page 154 example 4.21
//==============================================================================
clc;
clear;

d=5;//Internal Diameter of circular waveguide in cm
f=9*10^9;//Frequency in Hz in TE11 mode
c=3*10^10;//Velocity of Light in cm/sec
Emax=300;//Max field strength in V/cm

//CALCULATION
w0=(c/f);//Free space wavelength in cms
wc=((d*(%pi))/1.841);//Cutoff wavelength in TE11 mode in cms
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cms
Pmax=(0.498*(Emax^2)*(d^2)*(w0/wg))/1000;//Maximum power in kWatts

//OUTPUT
mprintf('\nMaximum power is Pmax=%4.2f kWatts',Pmax);


//=========================END OF PROGRAM===============================
