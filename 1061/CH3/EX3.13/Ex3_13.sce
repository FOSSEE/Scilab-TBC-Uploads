//Ex:3.13
clc;
clear;
close;
n1=1.48;// core refractive index
n2=1.46;// cladding refractive index
a=2.5;// radius in um
y=0.85;// wavelength in um
dl=(n1-n2)/n1;// index difference
v=(2*%pi*a*n1*(2*dl)^(0.5))/y;// the normaised frequency
M=(v*v)/2;// number of modes
printf("The number of modes=%f", M);