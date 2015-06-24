clc();
clear;
// To calculate the de broglie wavelength of proton
mp=1.6*10^-27;   //mass of proton in kg
me=9.1*10^-31;    //mass of electron in kg
h=6.626*10^(-34);
c=3*10^10;    //velocity of light in m/sec
Ep=me*c^2;
lamda=h/sqrt(2*mp*Ep);   //wavelength in m
lamda_A=lamda*10^10;    //converting lamda from m to A
printf("The de broglie wavelength in Angstrom is");
disp(lamda_A);
