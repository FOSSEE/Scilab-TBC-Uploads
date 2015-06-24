//Ex:3.6
clc;
clear;
close;
n1=1.48;// core refractive index
a=40*(10^-6);// core radius in meter
dl=0.015;// index difference
y=0.85*(10^-6);// wavelength in um
v=(2*%pi*a*n1*sqrt(2*dl))/y;// normalised frequency
M=v^2/2;
m=ceil(M);// the total no. of guided  modes
printf("normalised frequency=%f",v);
printf("\n the total no. of guided  modess =%d",m);