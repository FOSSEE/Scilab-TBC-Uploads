//Ex:3.2
clc;
clear;
close;
n1=1.505;// core refractive index
n2=1.502;// cladding refractive index
n_m=sqrt(n1^2-n2^2);// numerical aperture
y=1.3*10^-6;
v=2.4;
a=(v*y)/(2*%pi*(sqrt(n1^2-n2^2)))*10^6;// core radius in micrometer
printf("numerical aperture=%f",n_m);
printf("\n core radius=%f micrometer",a);