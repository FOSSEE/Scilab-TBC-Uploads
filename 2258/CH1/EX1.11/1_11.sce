clc();
clear;
// To calculate the de Broglie wavelength of neutron
m=1.675*10^(-27);    //mass of neutron in kg
h=6.626*10^(-34);
E=10;   //kinetic energy in keV
EeV=E*10^3;    //Energy in eV
Ej=EeV*1.6*10^-19;   //kinetic energy in J
v=sqrt(2*Ej/m);   //velocity in m/s
printf("The velocity in m/sec is");
disp(v);
lamda=h/(m*v);    //de broglie wavelength in m
printf("The de Broglie wavelength in metres is");
disp(lamda);
lamda_A=lamda*10^10;   //de broglie wavelength in armstrong
printf("The de Broglie wavelength is %f Armstrong",lamda_A);
