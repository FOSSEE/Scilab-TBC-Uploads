//Ex:3.11
clc;
clear;
close;
n1=1.5;// core refractive index
y=1.3*(10^-6);// wavelength in um
M=1100;//  total no. of models
dl=0.01;// index difference
v=sqrt(2*M);
V=ceil(v);
a=(V*y)/(2*%pi*n1*sqrt(2*dl))*10^6;// core radius in micrometer
a1=ceil(a);// core radius in micrometer
printf("the core diameter=%d um",2*a1);