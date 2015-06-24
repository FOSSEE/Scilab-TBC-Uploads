// Exa 3.6
clc;
clear;
close;
// given :
f=100 //frequency in Mhz
f=100*10^6 //frequency in hertz
c=3*10^8 //speed of light in m/s
D=1.5 // directivity 
lambda=c/f //wavelength in meter
Ae=(lambda^2*D)/(4*(%pi)) // effective area in m^2
disp(Ae,"Effective area of hertezian dipole in m^2: ")
