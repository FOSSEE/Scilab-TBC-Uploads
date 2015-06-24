//chapter-4 page 151 example 4.14
//==============================================================================
clc;
clear;

//For a rectangular waveguide
b=2.5;//Length of Rectangular Waveguide in cm
a=5;//breadth of Rectangular Waveguide in cm
c=3*10^10;//Velocity of Light in cm/sec
w0=4.5;//Free space wavelength in cm

//CALCULATION
disp('For a TE10 mode which is the dominant mode');
wc=2*a;//Cutoff wavelength in cm
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cm
Vp=(c/sqrt(1-(w0/wc)^2))/10^10;//Phase Velocity in 10^10 cm/sec
B=((2*(%pi)*sqrt(wc^2-w0^2))/(w0*wc));//Phase constant in radians

//OUTPUT
mprintf('\nGuide wavelength is wg=%1.5f cm \nPhase constant is B=%1.3f radians \nPhase Velocity is Vp=%1.2f *10^10 cm/sec',wg,B,Vp);

//=========================END OF PROGRAM===========================================

//Note: Check the answers once
//Correct answers are
//Guide wavelength is wg=5.03903 cm 
//Phase constant is B=1.247 radians 
//Phase Velocity is Vp=3.36 *10^10 cm/sec
