clc;
close();
clear();
//page no 507
//prob no. 15.12
//misprinted example number
c=3*10^8;  //speed of light
f=100*10^6;   //frequency
lembda=c/f;   //wavelength
mprintf('The wavelength of 2GHz is, = %i m\n',lembda);
Ac=0.13*lembda^2;
mprintf('The capture area is ,Ac= %.2f m^2',Ac);
