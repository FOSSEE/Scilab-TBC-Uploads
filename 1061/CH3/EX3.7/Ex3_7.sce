//Ex:3.7
clc;
clear;
close;
n1=1.46;// core refractive index
dl=0.015;// index difference
a=30*(10^-6);// core radius in meter
y=0.85*(10^-6);// wavelength in um
n2=n1-(n1*dl);// cladding refractive index
v=(2*%pi*a*n1*sqrt(2*dl))/y;// normalised frequency
M=v^2/2;// the total no. of guided  modes
printf("cladding refractive index=%f",n2);
printf("\n normalised frequency=%f",v);
printf("\n the total no. of guided  modess =%d",M);