//Ex:3.1
clc;
clear;
close;
n1=1.50;// core refractive index
n2=1.48;// cladding refractive index
y=1.3*10^-6;
m=1000;// the no. of models
v=sqrt(2*m);
a=(v*y)/(2*%pi*(sqrt(n1^2-n2^2)))*10^6;// core radius in micrometer
printf("core radius=%f micrometer",a);