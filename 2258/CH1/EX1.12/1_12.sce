clc();
clear;
// To calculate the de Broglie wavelength of electron
m=9.1*10^-31;    //mass of electron in kg
h=6.6*10^(-34);
E=2;   //kinetic energy in keV
EeV=E*10^3;    //Energy in eV
Ej=EeV*1.6*10^-19;   //kinetic energy in J
p=sqrt(2*m*Ej);    //momentum
lamda=h/p;    //de broglie wavelength in m
printf("The de Broglie wavelength in metres is");
disp(lamda);
lamda_A=lamda*10^10;   //de broglie wavelength in armstrong
printf("The de Broglie wavelength is %f Armstrong",lamda_A);
