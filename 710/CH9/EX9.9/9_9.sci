clc();
clear;
//To determine the power of the laser
h=6.626*10^-34;                         //plancks constant
c=3*10^8;                               //speed of light
lambda=500;                             //wavelength of laser
E=(h*c)/lambda;                         //Energy of 500 nm photon
N=2.52*10^16;                           //number of photons in a 20ms pulse
p=((E*N)/(20*10^-3))*10^9
printf("The power of the laser is %f W",p);