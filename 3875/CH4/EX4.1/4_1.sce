clc;
clear;
d=0.08*10^-2 //distance between parallel slits in m
Beta=6*10^-4 //fringe width in m
v=8*10^11*10^3 //frequency of light in Hz
c=3*10^8 //velocity of light in m/s

//calculation
lambda=c/v //wavelength in m
D=(Beta*d)/lambda

mprintf("The distance of the screen from the slits should be = %1.2f m",D)
 
