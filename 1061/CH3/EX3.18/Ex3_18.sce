//Ex:3.18
clc;
clear;
close;
n1=1.5;// core refractive index
n2=1.45;// cladding refractive index
a=50;// radius in um
y=1.3;// operating wavelength in um
NA=sqrt(n1^2-n2^2);// numerical aperture
N_A=0.38;
v=(2*%pi*a*N_A)/y;// cut of numbers
M=v^2/2;// number of modes
printf("The cut of numbers =%f", v);
printf("\n The number of modes =%f", M);