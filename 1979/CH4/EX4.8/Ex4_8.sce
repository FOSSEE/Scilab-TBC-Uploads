//chapter-4 page 147 example 4.8
//==============================================================================
clc;
clear;

a=10;//breadth of a rectangular waveguide in cm
f=2.5*10^9;//Frequency in Hz in TE10 mode
c=3*10^10;//Velocity of Light in cm/sec

//CALCULATION
wc=2*a;//Cutoff wavelength for TE10 mode in cm
w0=(c/f);//Free space wavelength in cm
x=sqrt(1-(w0/wc)^2);
wg=(w0/x);//Guide wavelength in cm
Vp=(c/x)/10^5;//Phase Velocity in Km/sec
Vg=((c^2)/Vp)/10^10;//Group Velocity in Km/sec

//OUTPUT
mprintf('\nCutoff wavelength for TE10 mode is wc=%2.0f cm \nGuide wavelength is wg=%2.0f cm \nPhase Velocity is Vp=%7.2f Km/sec \nGroup Velocity is Vg=%6.2f Km/sec',wc,wg,Vp,Vg);

//=========================END OF PROGRAM===============================
