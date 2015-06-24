clc;
close();
clear();
//page no 405
//prob no. 12.4
B=2*10^6;  //Hz
R=50 ; //ohm
kT0=4*10^-21;

Nav=kT0*B;
mprintf('Noise power=%.0f fW',Nav*10^15);
