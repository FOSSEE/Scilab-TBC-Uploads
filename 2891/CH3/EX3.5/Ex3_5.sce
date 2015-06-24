//Exa 3.5
clc;
close;
clear;
// given:
f=500 //frequency in mega hertz
f=500*10^6 //frequency in hertz
c=3*10^8 //speed of light in m/s
Gdmax=1.644 // directivity of a half wave dipole
lambda=c/f //wavelength in meter
Ae=((lambda)^2*Gdmax)/(4*(%pi)) // Effective area in m^2
disp(Ae,"effective area of half wave dipole in m^2:")
