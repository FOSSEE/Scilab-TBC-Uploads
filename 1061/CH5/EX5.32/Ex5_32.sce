//Ex:5.32
clc;
clear;
close;
n1=1.48;// core refractive index
dl=0.0027;
a=4.4*10^-6;// radius in m
y=1.32*10^-6;// operating wavelength in m
n2=n1*(1-dl);
c=3*10^8;// the speed of ligth in m/s
v=(2*3.14*a*n1*sqrt(2*dl))/y;
VD=0.080+0.549*(2.834-v)^2;
DW=(-1)*(n2*dl*VD)/(c*y);// wavelength dispersion in s /um/m
Dw=DW*10^6;// wavelength dispersion in ps /nm/km
printf("The wavelength dispersion =%f ps n/m/km", Dw);