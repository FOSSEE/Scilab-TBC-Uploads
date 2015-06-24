//Ex:3.5
clc;
clear;
close;
n1=3.6;// core refractive index
n2=3.3;// cladding refractive index
d=2.0;// thickness in um
y=0.8;// wavelength in um
m=(2*d*sqrt(n1^2-n2^2))/y;// total no. of models allowed
M=ceil(m);// total no. of models allowed
printf("total no. of models allowed=%d",M);