//Ex:3.28
clc;
clear;
close;
n1=1.50;// core refractive index
n2=1.48;// cladding  refractive index
NA=sqrt(n1^2-n2^2);// numerical aperture
a=25;// core radius in um
y=0.85;// wavelength in um
v=(2*3.14*a*NA)/y;// cut off parameter
M=v^2/2;// number of modes
printf("The cut off parameter =%f", v);
printf("\n The number of modes =%d",M);