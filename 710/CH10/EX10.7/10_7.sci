clc();
clear;
//To determine the kinetic energy of electron
h=6.626*10^-34;                           //plancks constant
E=85;                                     //Energy in keV
c=3*10^8;                                 //speed of light
lambda=(h*c)/(E*10^3*(1.6*10^-19));       //de Broglie wavelength
m=9.1*10^-31;                             //mass of electron
K=((h^2)/((lambda^2)*2*m*1.6*10^-9))*10^7 //kinetic energy of electron
printf("The kinetic enery of the electron is %f keV",K);
