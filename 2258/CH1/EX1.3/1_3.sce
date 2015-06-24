clc();
clear;
// To calculate the de Broglie wavelength of neutron
m=1.674*10^(-27);    //mass of neutron in kg
h=6.626*10^(-34);
E=0.025;   //kinetic energy in eV
Ej=E*1.6*10^-19;   //kinetic energy in J
lamda=h/sqrt(2*m*Ej);   //de Broglie wavelength
printf("The de Broglie wavelength in metres is");
disp(lamda);
lamdaA=lamda*10^10;   //converting wavelength from m to Armstrong
printf("The de Broglie wavelength is %f Armstrong",lamdaA);
