//Ex:3.9
clc;
clear;
close;
n1=1.45;// core refractive index
n_m=0.16;// numerical aperture
a=30*10^-6;// core radius in micrometer
y=0.5*(10^-6);// wavelength in um
v=(2*%pi*a*n_m)/y;// normalised frequency
printf("normalised frequency=%f",v);