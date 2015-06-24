clc();
clear;
// To calculate the wavelength of thermal neutron
m=1.676*10^(-27);    //mass of neutron in kg
h=6.62*10^(-34);
E=0.025;   //kinetic energy in eV
Ej=E*1.6*10^-19;   //kinetic energy in J
v=sqrt(2*Ej/m);   //velocity in m/s
lamda=h/(m*v);    //wavelength in m
printf("The neutrons wavelength in metres is");
disp(lamda);
lamda_A=lamda*10^10;   //de broglie wavelength in armstrong
printf("The wavelength is %f Armstrong",lamda_A);
