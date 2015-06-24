clc;
close();
clear();
//page no 500
//prob no. 15.2
c=3*10^8;  //speed of light
f=2*10^9;   //frequency
lembda=c/f;   //wavelength
mprintf('The wavelength of 2GHz is, = %.2f m\n',lembda);
D=15;  //m
Rff=2*D^2/lembda;
mprintf(' The distance to the far field is, Rff = %i m\n',Rff);
