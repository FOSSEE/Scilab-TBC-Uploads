clc();
clear;
// To calculate the de broglie wavelength of neutron
mn=1.676*10^-27;   //mass of neutron in kg
me=9.1*10^-31;    //mass of electron in kg
h=6.62*10^(-34);
c=3*10^8;    //velocity of light in m/sec
En=2*me*c^2;
lamda=h/sqrt(2*mn*En);   //wavelength in m
lamda_A=lamda*10^10;    //converting lamda from m to A
printf("The de broglie wavelength is %f Angstrom",lamda_A);
