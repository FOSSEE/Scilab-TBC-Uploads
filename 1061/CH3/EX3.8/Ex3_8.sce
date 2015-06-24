//Ex:3.8
clc;
clear;
close;
n1=1.5;// core refractive index
dl=0.01;// index difference
M=1100;// the total no. of guided  modes
y=1.3*(10^-6);// wavelength in um
v=sqrt(2*M);// normalised frequency
a=(v*y)/(2*%pi*n1*sqrt(2*dl))*10^6;// core radius in meter
printf("normalised frequency=%f",v);
printf("\n the diameter of the fiber core =%f um",2*a);