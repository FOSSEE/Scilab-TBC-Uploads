//chapter-4 page 149 example 4.12
//==============================================================================
clc;
clear;

//For an air filled circular Waveguide in the dominant mode
D=4;//Inner diameter of an air filled circular Waveguide in cm
c=3*10^10;//Velocity of Light in cm/sec

//CALCULATION
disp('The dominant mode in the circular waveguide would be like TE11,wc is maximum');
r=D/2;//radius in cm
wc=((2*(%pi)*r)/1.841);//Cutoff wavelength in cms
fc=(c/wc)/10^9;//Cutoff frequency in GHz
mprintf('\nCutoff wavelength is wc=%1.4f cms \nCutoff frequency is fc=%1.3f GHz',wc,fc);
disp('Since cut-off frequency is 4.395 GHz,frequencies higher than fc will be propagated.Assume a signal of frequency of 5 GHz is being propagated');
f=5*10^9;//frequency of signal in Hz
w0=(c/f);//free space wavelength in cm
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cm
mprintf('\nWave length in the guide is wg=%2.2f cm',wg);

//=========================END OF PROGRAM===============================
