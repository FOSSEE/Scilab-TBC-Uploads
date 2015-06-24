clc();
clear;
// To calculate the glancing angle
m=1.675*10^(-27);    //mass of neutron in kg
h=6.626*10^(-34);
n=1;   //diffractive order
d=0.314;   //spacing in nm
d=d*10^-9;   //spacing in m
E=0.04;   //kinetic energy in eV
Ej=E*1.6*10^-19;   //kinetic energy in J
lamda=h/sqrt(2*m*Ej);   //de Broglie wavelength
lamdaA=lamda*10^9;   //converting wavelength from m to nm
theta=asind((n*lamda)/(2*d));
printf("The de Broglie wavelength in metres is");
disp(lamda);
printf("The de Broglie wavelength is %f nm",lamdaA);
printf("glancing angle is %f degrees",theta);

//answer given in the book is wrong
