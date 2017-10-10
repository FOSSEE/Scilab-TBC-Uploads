//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 14.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
DeltaLambda0=30e-9;//Gain bandwidth in wavelength domain in m
Lambda0=1550e-9;//central wavelength in wavelength domain in m
c=3e8;//Speed of light in m/s
v=c/Lambda0;
Deltav=DeltaLambda0/Lambda0*v;
mprintf("\n Gain Bandwidth in frequency domain = %.1f THz",Deltav/1e12); 
