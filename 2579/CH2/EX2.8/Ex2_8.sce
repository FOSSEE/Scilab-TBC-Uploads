//Ex:2.8
clc;
clear;
close;
y=2;// wavelength in m
D=100;// directivity
Aem=(D*y^2)/(4*%pi);// max efeective aperture in m^2
printf("The max efeective aperture = %f m^2", Aem);
