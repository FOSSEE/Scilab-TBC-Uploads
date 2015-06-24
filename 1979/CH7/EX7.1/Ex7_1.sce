//chapter-7 page 278 example 7.1
//==============================================================================
clc;
clear;

a=4;//Length of Waveguide in cm
b=2.5;//breadth Waveguide in cm
f=10^10;//Frequency in Hz
x=0.1;//distance between twice minimum power points in cm
c=3*10^10;//Velocity of Light in cm/sec

//CALCULATION
wc=2*a;//Cutoff wavelength in TE10 mode in cms
w0=(c/f);//Free space wavelength in cms
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cms
S=(wg/(x*(%pi)));//Voltage Standing Wave Ratio(VSWR) for double minimum method

//OUTPUT
mprintf('\nFor double minimum method, Voltage Standing Wave Ratio(VSWR) is S=%2.1f',S);

//=========================END OF PROGRAM===============================

