//chapter-4 page 154 example 4.20
//==============================================================================
clc;
clear;

a=3;//Length of Rectangular Waveguide in cm
b=1;//Width of Rectangular Waveguide in cm
f=9*10^9;//Frequency in Hz in TE10 mode
c=3*10^10;//Velocity of Light in cm/sec
Emax=3000;//Max potential gradient in V/cm

//CALCULATION
w0=(c/f);//Free space wavelength in cms
disp('Free space Wavelength in cm is');
disp(w0);
wc=2*a;//Cutoff wavelength in TE10 mode in cms
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in cms
disp('Guide Wavelength in cm is');
disp(wg);
P=((6.63*10^(-4))*(Emax^2)*a*b*(w0/wg))/1000;//Power handling capability of the waveguide in kW

//OUTPUT
mprintf('\nPower handling capability of the waveguide is P=%2.3f kW',P);


//=========================END OF PROGRAM=================================

